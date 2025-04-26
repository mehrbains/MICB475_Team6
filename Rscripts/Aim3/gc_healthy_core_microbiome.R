#!/usr/bin/env Rscript
library(tidyverse)
library(phyloseq)
library(microbiome)
library(ggVennDiagram)

#### Load data ####
load("gc_final.RData")

#### "core" microbiome ####

# Convert sample counts to relative abundance
gc_RA <- transform_sample_counts(gc_final, fun=function(x) x/sum(x))

#### Healthy Core Microbiome ####

# Filter dataset for healthy control group and age categories
healthy <- subset_samples(gc_RA, Group == "Healthy control (HC)")
healthy_young <- subset_samples(healthy, `Age_Category`=="Young Adult")
healthy_middle <- subset_samples(healthy, `Age_Category`=="Middle Age")
healthy_elderly <- subset_samples(healthy, `Age_Category`=="Elderly")

# Determine ASVs are found in more than 70% of samples in each age category
young_healthy_ASVs <- core_members(healthy_young, detection=0, prevalence = 0.7)
middle_healthy_ASVs <- core_members(healthy_middle, detection=0, prevalence = 0.7)
elderly_healthy_ASVs <- core_members(healthy_elderly, detection=0, prevalence = 0.7)

# View the ASVs
tax_table(prune_taxa(young_healthy_ASVs,gc_final))
tax_table(prune_taxa(middle_healthy_ASVs,gc_final))
tax_table(prune_taxa(elderly_healthy_ASVs,gc_final))

# Create a list

gc_healthy_list <- list("Young Adult" = young_healthy_ASVs, "Middle Age" = middle_healthy_ASVs, "Elderly" = elderly_healthy_ASVs)

# Create a Venn diagram using all the ASVs shared and unique to antibiotic users and non users
gc_healthy_venn <- ggVennDiagram(x = gc_healthy_list)
ggsave("gc_healthy_venn.png", gc_healthy_venn)

#!/usr/bin/env Rscript
library(tidyverse)
library(phyloseq)
library(microbiome)
library(ggVennDiagram)

#### Load data ####
load("gc_final.RData")

#### "core" microbiome ####

# Convert sample counts to relative abundance
gc_RA <- transform_sample_counts(gc_final, fun=function(x) x/sum(x))

#### Healthy Core Microbiome prevalence = 0.8 ####

# Filter dataset for healthy control group and age categories
healthy <- subset_samples(gc_RA, Group == "Healthy control (HC)")
healthy_young <- subset_samples(healthy, `Age_Category`=="Young Adult")
healthy_middle <- subset_samples(healthy, `Age_Category`=="Middle Age")
healthy_elderly <- subset_samples(healthy, `Age_Category`=="Elderly")

# Determine ASVs are found in more than 80% of samples in each age category
young_healthy_ASVs <- core_members(healthy_young, detection=0, prevalence = 0.8)
middle_healthy_ASVs <- core_members(healthy_middle, detection=0, prevalence = 0.8)
elderly_healthy_ASVs <- core_members(healthy_elderly, detection=0, prevalence = 0.8)

# View the ASVs
tax_table(prune_taxa(young_healthy_ASVs,gc_final))
tax_table(prune_taxa(middle_healthy_ASVs,gc_final))
tax_table(prune_taxa(elderly_healthy_ASVs,gc_final))

# Create a list

gc_healthy_list <- list("Young Adult" = young_healthy_ASVs, "Middle Age" = middle_healthy_ASVs, "Elderly" = elderly_healthy_ASVs)

# Create a Venn diagram using all the ASVs shared and unique to antibiotic users and non users
gc_healthy_venn <- ggVennDiagram(x = gc_healthy_list)
ggsave("gc_healthy_venn0.8.png", gc_healthy_venn)                                 
