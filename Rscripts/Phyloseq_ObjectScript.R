# Loading in packages
library(phyloseq)
library(ape)
library(tidyverse)
library(vegan)


# Loading in data
metafp <- "updated_v2_gastric_cancer_metadata.tsv"
meta <- read_delim(metafp, delim="\t")

otufp <- "feature-table.txt"
otu <- read_delim(file = otufp, delim="\t", skip=1)

taxfp <- "taxonomy.tsv"
tax <- read_delim(taxfp, delim="\t")

phylotreefp <- "tree.nwk"
phylotree <- read.tree(phylotreefp)


# Formatting the OTU table
# OTU tables should be a matrix with rownames and colnames as OTUs and sampleIDs, respectively

# save everything except first column (OTU ID) into a matrix
otu_mat <- as.matrix(otu[,-1])
# Make first column (#OTU ID) the rownames of the new matrix
rownames(otu_mat) <- otu$`#OTU ID`
# Use the "otu_table" function to make an OTU table
OTU <- otu_table(otu_mat, taxa_are_rows = TRUE) 
class(OTU)


# Formatting metadata
# Save everything except sampleid as new data frame
samp_df <- as.data.frame(meta[,-1])
# Make sampleids the rownames
rownames(samp_df)<- meta$'sample-id'
# Make phyloseq sample data with sample_data() function
SAMP <- sample_data(samp_df)
class(SAMP)


# Formatting taxonomy
# Convert taxon strings to a table with separate taxa rank columns
tax_mat <- tax %>% select(-Confidence)%>%
  separate(col=Taxon, sep="; "
           , into = c("Domain","Phylum","Class","Order","Family","Genus","Species")) %>%
  as.matrix() # Saving as a matrix
# Save everything except feature IDs 
tax_mat <- tax_mat[,-1]
# Make sampleids the rownames
rownames(tax_mat) <- tax$`Feature ID`

# Make taxa table
TAX <- tax_table(tax_mat)
class(TAX)


# Creating the phyloseq object
# Merge all into a phyloseq object
gc <- phyloseq(OTU, SAMP, TAX, phylotree)

# Looking at phyloseq object
otu_table(gc)

sample_data(gc)
tax_table(gc)
phy_tree(gc)


# Analyzing data with processor functions
# Remove non-bacterial sequences
gc_filt <- subset_taxa(gc,  Domain == "d__Bacteria" & Class!="c__Chloroplast" & Family !="f__Mitochondria")
# Remove ASVs that have less than 5 counts total
gc_filt_nolow <- filter_taxa(gc_filt, function(x) sum(x)>5, prune = TRUE)
# Remove samples with less than 100 reads
gc_final <- prune_samples(sample_sums(gc_filt_nolow)>100, gc_filt_nolow)

# Rarefy samples
# rngseed sets a random number. If you want to reproduce this exact analysis, you need
# to set rngseed the same number each time
# t transposes the table to use rarecurve function
# cex decreases font size
rarecurve(t(as.data.frame(otu_table(gc_final))), cex=0.1)
gc_rare <- rarefy_even_depth(gc_final, rngseed = 1, sample.size = 12000)


# Saving
save(gc_final, file="gc_final.RData")
save(gc_rare, file="gc_rare.RData")

