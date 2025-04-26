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

#### Young Core Microbiome ####

# Filter dataset for healthy control group and age categories
young <- subset_samples(gc_RA, Age_Category == "Young Adult")
young_healthy <- subset_samples(young, `Group`=="Healthy Control (HC)")
young_chronic <- subset_samples(young, `Group`=="Chronic Gastritis (CG)")
young_gastric <- subset_samples(young, `Group`=="Gastric Cancer (GC)")

# Determine ASVs are found in more than 80% of samples in each age category
young_healthy_ASVs <- core_members(young_healthy, detection=0, prevalence = 0.8)
young_chronic_ASVs <- core_members(young_chronic, detection=0, prevalence = 0.8)
young_gastric_ASVs <- core_members(young_gastric, detection=0, prevalence = 0.8)

# Create a list

young_list <- list("Healthy" = young_healthy_ASVs, "Chronic Gastritis" = young_chronic_ASVs, "Gastric Cancer" = young_gastric_ASVs)

# Create a Venn diagram using all the ASVs shared and unique to antibiotic users and non users
young_venn <- ggVennDiagram(x = young_list)
ggsave("young_venn.png", young_venn)
