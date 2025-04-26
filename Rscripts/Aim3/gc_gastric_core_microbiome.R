#### Gastric Cancer ####

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

# Filter dataset for "Gastric cancer" group and age groups
gastric <- subset_samples(gc_RA, `Group` == "Gastric cancer (GC)")
gastric_sample_data <- sample_data(gastric)
young_gastric <- subset_samples(gastric, `Age_Category`== "Young Adult")
middle_gastric<- subset_samples(gastric, `Age_Category`=="Middle Age")
elderly_gastric <- subset_samples(gastric, `Age_Category`=="Elderly")

# Determine ASVs are found in more than 70% of samples in each age group
young_gastric_ASVs <- core_members(young_gastric, detection=0, prevalence = 0.7)
middle_gastric_ASVs <- core_members(middle_gastric, detection=0, prevalence = 0.7)
elderly_gastric_ASVs <- core_members(elderly_gastric, detection=0, prevalence = 0.7)

# View these ASVs
tax_table(prune_taxa(young_gastric_ASVs,gc_final))
tax_table(prune_taxa(middle_gastric_ASVs,gc_final))
tax_table(prune_taxa(elderly_gastric_ASVs,gc_final))

# Create a list

gc_gastric_list <- list("Young Adult" = young_gastric_ASVs, "Middle Age" = middle_gastric_ASVs, "Elderly" = elderly_gastric_ASVs)

# Create a Venn diagram using all the ASVs shared and unique to antibiotic users and non users
gc_gastric_venn <- ggVennDiagram(x = gc_gastric_list)
ggsave("gc_gastric_venn.png", gc_gastric_venn)

#### Gastric Cancer prevalence = 0.8 ####

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

# Filter dataset for "Gastric cancer" group and age groups
gastric <- subset_samples(gc_RA, `Group` == "Gastric cancer (GC)")
gastric_sample_data <- sample_data(gastric)
young_gastric <- subset_samples(gastric, `Age_Category`== "Young Adult")
middle_gastric<- subset_samples(gastric, `Age_Category`=="Middle Age")
elderly_gastric <- subset_samples(gastric, `Age_Category`=="Elderly")

# Determine ASVs are found in more than 80% of samples in each age group
young_gastric_ASVs <- core_members(young_gastric, detection=0, prevalence = 0.8)
middle_gastric_ASVs <- core_members(middle_gastric, detection=0, prevalence = 0.8)
elderly_gastric_ASVs <- core_members(elderly_gastric, detection=0, prevalence = 0.8)

# View these ASVs
tax_table(prune_taxa(young_gastric_ASVs,gc_final))
tax_table(prune_taxa(middle_gastric_ASVs,gc_final))
tax_table(prune_taxa(elderly_gastric_ASVs,gc_final))

# Create a list

gc_gastric_list <- list("Young Adult" = young_gastric_ASVs, "Middle Age" = middle_gastric_ASVs, "Elderly" = elderly_gastric_ASVs)

# Create a Venn diagram using all the ASVs shared and unique to antibiotic users and non users
gc_gastric_venn <- ggVennDiagram(x = gc_gastric_list)
ggsave("gc_gastric_venn0.8.png", gc_gastric_venn)                        
