#### Intraepithelial neoplasia ####

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

# Filter dataset for "Intraepithelial neoplasia" group and age groups
IN <- subset_samples(gc_RA, `Group` == "Intraepithelial neoplasia (IN)")
IN_sample_data <- sample_data(IN) #view the filtered data

middle_IN<- subset_samples(IN, `Age_Category`=="Middle Age")
elderly_IN <- subset_samples(IN, `Age_Category`=="Elderly")

# Determine ASVs are found in more than 70% of samples in each age category
middle_IN_ASVs <- core_members(middle_IN, detection=0, prevalence = 0.7)
elderly_IN_ASVs <- core_members(elderly_IN, detection=0, prevalence = 0.7)

# View the ASVs
tax_table(prune_taxa(young_IN_ASVs,gc_final))
tax_table(prune_taxa(middle_IN_ASVs,gc_final))
tax_table(prune_taxa(elderly_IN_ASVs,gc_final))

# Create a list

gc_IN_list <- list("Middle Age" = middle_IN_ASVs, "Elderly" = elderly_IN_ASVs)

# Create a Venn diagram using all the ASVs shared and unique to antibiotic users and non users
gc_IN_venn <- ggVennDiagram(x = gc_IN_list) + coord_flip()
ggsave("gc_IN_venn.png", gc_IN_venn)

#### Intraepithelial neoplasia prevalence = 0.8 ####

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

# Filter dataset for "Intraepithelial neoplasia" group and age groups
IN <- subset_samples(gc_RA, `Group` == "Intraepithelial neoplasia (IN)")
IN_sample_data <- sample_data(IN) #view the filtered data

middle_IN<- subset_samples(IN, `Age_Category`=="Middle Age")
elderly_IN <- subset_samples(IN, `Age_Category`=="Elderly")

# Determine ASVs are found in more than 70% of samples in each age category
middle_IN_ASVs <- core_members(middle_IN, detection=0, prevalence = 0.8)
elderly_IN_ASVs <- core_members(elderly_IN, detection=0, prevalence = 0.8)

# View the ASVs
tax_table(prune_taxa(young_IN_ASVs,gc_final))
tax_table(prune_taxa(middle_IN_ASVs,gc_final))
tax_table(prune_taxa(elderly_IN_ASVs,gc_final))

# Create a list

gc_IN_list <- list("Middle Age" = middle_IN_ASVs, "Elderly" = elderly_IN_ASVs)

# Create a Venn diagram using all the ASVs shared and unique to antibiotic users and non users
gc_IN_venn <- ggVennDiagram(x = gc_IN_list) + coord_flip()
ggsave("gc_IN_venn0.8.png", gc_IN_venn)
