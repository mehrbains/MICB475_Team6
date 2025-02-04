# MICB475: Team 6

## Team Meeting 1
__February 4, 2025__

RECAP:

Potential datasets explored:
- Radiation
  - Found existing papers about it
- Aging
  - Likely requires machine learning 
  - Dataset: Comprehensive 16S rRNA and metagenomic data from the gut microbiome of aging and rejuvenation mouse models [Nature Scientific Data, https://doi.org/10.1038/s41597-022-01308-3]
- Vaping vs. smoking effects on cardiac health
  - Need to find and merge datasets
- MS
  - Only 1 team researched before - only 1 variable used, many unused
  - Original paper - metabolites (age, sex, bmi, geography)
  - UJEMI - eczema
  - Other variables: smoking, education, occupation, vitamin D (alpha diversity)
  - Potential research question: [variable class] in patients who have MS vs. healthy as it pertains to gut microbiota diversity
  - Cons:
    - Processing takes a long time
    - Clean metadata and keep only samples we want
      - Update manifest file (keep samples we want)
      - Less than 1000 samples if we can
      - Re-classify into categorical grouping
- Depression
- Alcohol consumption
- Random datasets: https://www.nature.com/search?q=16s+rRNA&journal=sdata
- **Gastric cancer**
  - Unexplored variables: biochemical metrics ex. blood glucose, triglycerides, total cholesterol
  - Cross compare different types of gastric cancer
  - Healthy vs. different progression of cancer
  - Could do taxonomic analysis (modules) + functional analysis (last aim of proposal)
    - PieCrust: add on to QIIME2
    - Shows certain species associated with specific biochemical markers
    - Identify if species are associated with certain enriched pathways in the gut
  - Pros: ~ 300 samples, faster processing
  - Cons: biochemical variables are numerical, need to reclassify into ranges/categorical


AGENDA:

- Discuss the caveats and feasibility of potentially merging datasets
- Discuss some of the datasets from the class inventory that have unused variables
- Choose a dataset and research question by the end of the session

NEXT:

- Next week:
  - Make new metadata categories for biochemical variables
    - Categorize by lab/clinical parameters, according to literature standards
    - Make copy of original metadata file
  - Outline proposal
- Process data before proposal is due
