#### Chronic gastritis ####

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

# Filter dataset for "Chronic gastritis" group and age groups
chronic <- subset_samples(gc_RA, `Group` == "Chronic gastritis (CG)")
chronic_sample_data <- sample_data(chronic)
young_chronic <- subset_samples(chronic, `Age_Category`== "Young Adult")
middle_chronic<- subset_samples(chronic, `Age_Category`=="Middle Age")
elderly_chronic <- subset_samples(chronic, `Age_Category`=="Elderly")

# Determine ASVs are found in more than 70% of samples in each age group
young_chronic_ASVs <- core_members(young_chronic, detection=0, prevalence = 0.7)
middle_chronic_ASVs <- core_members(middle_chronic, detection=0, prevalence = 0.7)
elderly_chronic_ASVs <- core_members(elderly_chronic, detection=0, prevalence = 0.7)

# View these ASVs
tax_table(prune_taxa(young_chronic_ASVs,gc_final))
tax_table(prune_taxa(middle_chronic_ASVs,gc_final))
tax_table(prune_taxa(elderly_chronic_ASVs,gc_final))

# Create a list

gc_chronic_list <- list("Young Adult" = young_chronic_ASVs, "Middle Age" = middle_chronic_ASVs, "Elderly" = elderly_chronic_ASVs)

# Create a Venn diagram using all the ASVs shared and unique to antibiotic users and non users
gc_chronic_venn <- ggVennDiagram(x = gc_chronic_list)
ggsave("gc_chronic_venn.png", gc_chronic_venn)
