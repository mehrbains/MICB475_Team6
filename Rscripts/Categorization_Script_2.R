#### Categorizing Numerical Metadata Variables ####

# Load libraries
library(tidyverse)
library(dplyr)
library(ggplot2)

# Load data
gastric_meta <- read_delim("gastric_cancer_metadata.tsv")


## Triglyceride Level ##

# Create cutoffs 
trig_cutoffs <- quantile(gastric_meta$`Triglyceride (mmol/L)`, probs = c(1/3, 2/3))
trig_cutoffs

# Make new column
gastric_meta_trig <- gastric_meta %>%
  mutate(`Triglyceride Level` = case_when(
  `Triglyceride (mmol/L)` <= trig_cutoffs[1] ~ "low",
  `Triglyceride (mmol/L)` <= trig_cutoffs[2] ~ "medium",
  TRUE ~ "high"
))

# Check distribution of categorized samples for evenness
table(gastric_meta_trig$`Triglyceride Level`)

trig_distribution <- ggplot(gastric_meta_trig, aes(x = `Triglyceride (mmol/L)`, fill = `Triglyceride Level`)) +
  geom_histogram(binwidth = 0.1, color = "black") +
  labs(title = "Triglyceride Level Distribution", x = "Triglyceride (mmol/L)", y = "Count") +
  theme_classic()
trig_distribution


## Total Cholesterol Level ##

# Create cutoffs 
chol_cutoffs <- quantile(gastric_meta_trig$`Total cholesterol (mmol/L)`, probs = c(1/3, 2/3))
chol_cutoffs

# Make new column
gastric_meta_chol <- gastric_meta_trig %>%
  mutate(`Total Cholesterol Level` = case_when(
    `Total cholesterol (mmol/L)` <= chol_cutoffs[1] ~ "low",
    `Total cholesterol (mmol/L)` <= chol_cutoffs[2] ~ "medium",
    TRUE ~ "high"
  ))

# Check distribution of categorized samples for evenness
table(gastric_meta_chol$`Total Cholesterol Level`)

chol_distribution <- ggplot(gastric_meta_chol, aes(x = `Total cholesterol (mmol/L)`, fill = `Total Cholesterol Level`)) +
  geom_histogram(binwidth = 0.1, color = "black") +
  labs(title = "Total Cholesterol Distribution", x = "Total cholesterol (mmol/L)", y = "Count") +
  theme_classic()
chol_distribution


## Blood Glucose Level ##

# Create cutoffs 
gluc_cutoffs <- quantile(gastric_meta_chol$`Blood glucose (mmol/L)`, probs = c(1/3, 2/3))
gluc_cutoffs

# Make new column
gastric_meta_final <- gastric_meta_chol %>%
  mutate(`Blood Glucose Level` = case_when(
    `Blood glucose (mmol/L)` <= gluc_cutoffs[1] ~ "low",
    `Blood glucose (mmol/L)` <= gluc_cutoffs[2] ~ "medium",
    TRUE ~ "high"
  ))

# Check distribution of categorized samples for evenness
table(gastric_meta_final$`Blood Glucose Level`)

gluc_distribution <- ggplot(gastric_meta_final, aes(x = `Blood glucose (mmol/L)`, fill = `Blood Glucose Level`)) +
  geom_histogram(binwidth = 0.1, color = "black") +
  labs(title = "Blood Glucose Distribution", x = "Blood Glucose (mmol/L)", y = "Count") +
  theme_classic()
gluc_distribution


## Saving ##

write.table(gastric_meta_final, "updated_gastric_cancer_metadata.tsv", sep = "\t", row.names = FALSE, quote = FALSE)

ggsave("triglyceride_distribution.png", plot = trig_distribution, width = 8, height = 5, dpi = 300)
ggsave("cholesterol_distribution.png", plot = chol_distribution, width = 8, height = 5, dpi = 300)
ggsave("glucose_distribution.png", plot = gluc_distribution, width = 8, height = 5, dpi = 300)


## Age ##

# Make new column
gastric_meta_age <- gastric_meta %>%
  mutate(Age_Category = case_when(
    Age >= 17 & Age <= 39 ~ "Young Adult",
    Age >= 40 & Age <= 64 ~ "Middle Age",
    Age >= 65 ~ "Elderly"
  ))

# Check distribution of categorized samples
table(gastric_meta_age$Age_Category)

age_distribution <- ggplot(gastric_meta_age, aes(x = Age, fill = Age_Category)) +
  geom_histogram(binwidth = 2, color = "black", boundary = 0) +
  scale_fill_manual(values = c("Young Adult" = "lightgreen", "Middle Age" = "skyblue", "Elderly" = "lightpink")) +
  scale_x_continuous(breaks = seq(15, 85, by = 5)) +  # Adjust x-axis tick marks every 5 years
  scale_y_continuous(breaks = seq(0, max(gastric_meta_age$Age), by = 5)) +
  labs(title = "Age Distribution by Category", x = "Age (years)", y = "Count", fill = "Age Category") +
  theme_classic()
age_distribution

# Save metadata and distribution histogram 

write.table(gastric_meta_age, "updated_v2_gastric_cancer_metadata.tsv", sep = "\t", row.names = FALSE, quote = FALSE)

ggsave("age_distribution.png", plot = age_distribution, width = 8, height = 5, dpi = 300)


## Sex ##

table(gastric_meta_age$`Gender `)
