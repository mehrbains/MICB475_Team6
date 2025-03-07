#### Aim 2: Beta Diversity ####

# Load packages
library(phyloseq)
library(tidyverse)
library(vegan)
library(picante)

# Load RData
load("gc_rare.RData")
load("gc_final.RData")



## Beta diversity: All Groups ##

wu_dm <- distance(gc_rare, method = "wunifrac")

pcoa_wu <- ordinate(gc_rare, method = "PCoA", distance = wu_dm)

gg_pcoa <- plot_ordination(gc_rare, pcoa_wu, color = "Age_Category", shape = "Group") +
  labs(pch = "Group", col = "Age Category")
gg_pcoa

# Summary: confound is disease status, need to filter phyloseq object to only work with 
# samples from a single Group category at a time

# Check how many samples of each Group there are
nsamples(gc_rare)
table(sample_data(gc_rare)$Group)



## Beta diversity: Healthy (HC) ##

gc_rare_healthy <- subset_samples(gc_rare, Group == "Healthy control (HC)")

wu_dm_healthy <- distance(gc_rare_healthy, method = "wunifrac")

pcoa_wu_healthy <- ordinate(gc_rare_healthy, method = "PCoA", distance = wu_dm_healthy)

gg_pcoa_healthy <- plot_ordination(gc_rare_healthy, pcoa_wu_healthy, color = "Age_Category") +
  labs(col = "Age Category", title = "Weighted Unifrac Distance: Healthy") +
  stat_ellipse(type = "norm")
gg_pcoa_healthy

ggsave("plot_pcoa_healthy.png"
       , gg_pcoa_healthy
       , height=4, width=5)

# Summary: seems like no distinct clusters based on age



## Beta diversity: Intestinal metaplasia (IM) ##

gc_rare_im <- subset_samples(gc_rare, Group == "Intestinal metaplasia (IM）")
# Note: labelling is a bit weird for IM, the bracket is odd

wu_dm_im <- distance(gc_rare_im, method = "wunifrac")

pcoa_wu_im <- ordinate(gc_rare_im, method = "PCoA", distance = wu_dm_im)

gg_pcoa_im <- plot_ordination(gc_rare_im, pcoa_wu_im, color = "Age_Category") +
  labs(col = "Age Category", title = "Weighted Unifrac Distance: Intestinal metaplasia") +
  stat_ellipse(type = "norm")
gg_pcoa_im

ggsave("plot_pcoa_im.png"
       , gg_pcoa_im
       , height=4, width=5)

# Summary: no distint clusters based on age, no young adult samples



## Beta diversity: Intraepithelial neoplasia (IN) ##

gc_rare_in <- subset_samples(gc_rare, Group == "Intraepithelial neoplasia (IN)")

wu_dm_in <- distance(gc_rare_in, method = "wunifrac")

pcoa_wu_in <- ordinate(gc_rare_in, method = "PCoA", distance = wu_dm_in)

gg_pcoa_in <- plot_ordination(gc_rare_in, pcoa_wu_in, color = "Age_Category") +
  labs(col = "Age Category", title = "Weighted Unifrac Distance: Intraepithelial neoplasia") +
  stat_ellipse(type = "norm")
gg_pcoa_in

ggsave("plot_pcoa_in.png"
       , gg_pcoa_in
       , height=4, width=5)

# Summary: elderly cluster overlaps with middle age cluter, no young adult samples



## Beta diversity: Gastric cancer (GC) ##

gc_rare_gc <- subset_samples(gc_rare, Group == "Gastric cancer (GC)")

wu_dm_gc <- distance(gc_rare_gc, method = "wunifrac")

pcoa_wu_gc <- ordinate(gc_rare_gc, method = "PCoA", distance = wu_dm_gc)

gg_pcoa_gc <- plot_ordination(gc_rare_gc, pcoa_wu_gc, color = "Age_Category") +
  labs(col = "Age Category", title = "Weighted Unifrac Distance: Gastric cancer") +
  stat_ellipse(type = "norm")
gg_pcoa_gc

ggsave("plot_pcoa_gc.png"
       , gg_pcoa_gc
       , height=4, width=5)

# Summary: interesting overlap, middle age seems to be clustered together closely



## Beta diversity: Chronic gastritis (CG) ##

gc_rare_cg <- subset_samples(gc_rare, Group == "Chronic gastritis (CG)")

wu_dm_cg <- distance(gc_rare_cg, method = "wunifrac")

pcoa_wu_cg <- ordinate(gc_rare_cg, method = "PCoA", distance = wu_dm_cg)

gg_pcoa_cg <- plot_ordination(gc_rare_cg, pcoa_wu_cg, color = "Age_Category") +
  labs(col = "Age Category", title = "Weighted Unifrac Distance: Chronic gastritis") +
  stat_ellipse(type = "norm")
gg_pcoa_cg

ggsave("plot_pcoa_cg.png"
       , gg_pcoa_cg
       , height=4, width=5)

# Summary: all over the place, can't really draw ellipses
