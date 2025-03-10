# Loading in libraries
library(tidyverse)
library(phyloseq)
library(vegan)
library(ggforce)


# Loading in rarefied data
load("../phyloseq object/gc_rare.RData")
samp_dat_wdiv <- data.frame(sample_data(gc_rare), estimate_richness(gc_rare))

# Measuring the weighted unifrac distance in the rarefied phyloseq object
dm_unifrac <- UniFrac(gc_rare, weighted=TRUE)


# Plot the above as an ordination to a PCoA plot
ord.unifrac <- ordinate(gc_rare, method="PCoA", distance="unifrac")
plot_ordination(gc_rare, ord.unifrac, color="Age_Category", shape = "Group")


# Run the permanova on the above matrix for weighted unifrac
adonis2(dm_unifrac ~ `Age_Category`*Group, data=samp_dat_wdiv)

# Other metrics: bray-curtis
dm_bray <- vegdist(t(otu_table(gc_rare)), method="bray")
adonis2(dm_bray ~ `Age_Category`*Group, data=samp_dat_wdiv)

# Other metrics: jaccard
dm_jaccard <- vegdist(t(otu_table(gc_rare)), method="jaccard")
adonis2(dm_jaccard ~ `Age_Category`*Group, data=samp_dat_wdiv)


# re-plot the above PCoA with ellipses to show a significant difference 
plot_ordination(gc_rare, ord.unifrac, color = "Age_Category", shape = "Group") +
  stat_ellipse(type = "norm")

# can also use the ggforce package's geom_mark_ellipse function
plot_ordination(gc_rare, ord.unifrac, color = "Age_Category", shape="Group") +
  geom_mark_ellipse(aes(filter = Group != "subject-1"))
