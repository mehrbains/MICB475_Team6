#### Intestinal Metaplasia ####

#!/usr/bin/env Rscript
library(tidyverse)
library(phyloseq)
library(microbiome)
library(ggVennDiagram)

#### Load data ####
load("gc_final.RData")

#### "core" microbiome ####

# Convert to relative abundance
gc_RA <- transform_sample_counts(gc_final, fun=function(x) x/sum(x))

# Filter dataset for "Intestinal metaplasia" group and age groups
IM <- subset_samples(gc_RA, `Group` == "Intestinal metaplasia (IM）")
IM_sample_data <- sample_data(IM)

middle_IM<- subset_samples(IM, `Age_Category`=="Middle Age")
elderly_IM <- subset_samples(IM, `Age_Category`=="Elderly")

# Determine ASVs are found in more than 70% of samples in each age group
middle_IM_ASVs <- core_members(middle_IM, detection=0, prevalence = 0.7)
elderly_IM_ASVs <- core_members(elderly_IM, detection=0, prevalence = 0.7)

# View these ASVs
tax_table(prune_taxa(young_IM_ASVs,gc_final))
tax_table(prune_taxa(middle_IM_ASVs,gc_final))
tax_table(prune_taxa(elderly_IM_ASVs,gc_final))

# Create a list

gc_IM_list <- list("Middle Age" = middle_IM_ASVs, "Elderly" = elderly_IM_ASVs)

# Create a Venn diagram using all the ASVs shared and unique to antibiotic users and non users
gc_IM_venn <- ggVennDiagram(x = gc_IM_list) + coord_flip()
ggsave("gc_IM_venn.png", gc_IM_venn)
