# MICB475: Team 6

## Team Meeting 6
__March 11, 2025__

### Research Question: How does the composition and function of the gastric mucosal microbiome vary with age across different stages of gastric cancer?

### Experimental Aims
- Aim 1: Analyze the relationship between age and alpha diversity of the gastric mucosal microbiome for different stages of gastric cancer
- Aim 2: Identify if age has a significant effect on the beta diversity of the gastric mucosal microbiome at different stages of gastric cancer
- Aim 3: Identify microbial taxa that are strongly associated with distinct stages of gastric cancer across age cohorts (indicator species analysis)
- Aim 4: Investigate the impact of age on gastric mucosal metabolic function within each stage of gastric cancer
  
RECAP:
- Aim 1
- Aim 2:
  - Generated PCoA plots (5) for beta diversity
    - [plot_pcoa_healthy.png](/Rscripts/visuals/plot_pcoa_healthy.png)
    - [plot_pcoa_im.png](/Rscripts/visuals/plot_pcoa_im.png)
    - [plot_pcoa_in.png](/Rscripts/visuals/plot_pcoa_in.png)
    - [plot_pcoa_gc.png](/Rscripts/visuals/plot_pcoa_gc.png)
    - [plot_pcoa_cg.png](/Rscripts/visuals/plot_pcoa_cg.png)
  - Performed permanova test
- Aim 3:
  - Did core microbiome analysis (5 venn diagrams for each stage of cancer + healthy group) with detection = 0 and prevalence = 0.7
    - [gc_healthy_venn.png](/Rscripts/Aim3/gc_healthy_venn.png)
    - [gc_IN_venn.png](/Rscripts/Aim3/gc_IN_venn.png)
    - [gc_IM_venn.png](/Rscripts/Aim3/gc_IM_venn.png)
    - [gc_gastric_venn.png](/Rscripts/Aim3/gc_gastric_venn.png)
    - [gc_chronic_venn.png](/Rscripts/Aim3/gc_chronic_venn.png)
- Aim 4 
  - a few categories show no signficant pathways
- Submitted revised proposal

AGENDA:
- Two categories (intestinal metaplasia and intraepithelial neoplasia) do not have any samples in the young adult age category
- Analyzing beta-diversity and permanova results

MEETING NOTES: 

## Team Meeting 5
__March 4, 2025__

### Research Question: How does the composition and function of the gastric mucosal microbiome vary with age across different stages of gastric cancer?

### Experimental Aims
- Aim 1: Analyze the relationship between age and alpha diversity of the gastric mucosal microbiome for different stages of gastric cancer
- Aim 2: Identify if age has a significant effect on the beta diversity of the gastric mucosal microbiome at different stages of gastric cancer
- Aim 3: Identify microbial taxa that are strongly associated with distinct stages of gastric cancer across age cohorts (indicator species analysis)
- Aim 4: Investigate the impact of age on gastric mucosal metabolic function within each stage of gastric cancer

RECAP:
- filtered out <5 reads from the table-no-mitochondria-no-chloroplast file
- created gc_export to export all required files onto local computer to make phyloseq object (taxonomy.tsv, tree.nwk, feature-table.txt)
- made phyloseq object for use in downstream analyses
- performed Indicator Taxa Analysis
- performed Picrust 

AGENDA:
- go over the feedback provided by Evelyn for the team proposal
  - Suggestions for the approach section
    - do not require taxonomic barplot of strains between different age groups
    - recommended that we perform core microbiome analysis in addition to Indicator Taxa Analysis
    - suggested that it may be a good idea to do both alpha and beta for both objectives 1 and 2
- show the results from Indicator Taxa Analysis
    - make sure our method and understanding of the analysis is correct
- Picrust how to filter/analysis
 
Notes during meeting:
- Notes on proposal feedback discussion:
  - Edit intro/background to reflect that we're basing our proposal on the fact that the original paper already explored microbiome differences across cancer stages, and we are tying age into this
  - Could mention other cancer types that also show differences across age groups in introduction
  - For research objectives, rephrase part about 'promotes a more aggressive progression of cancer' because we can't conclude causation; we could say based on our functional analysis that up or downregulation of certain pathways we find might be promoting cancer
  - For aim 1, add a sentence explaining how answering the aim will address the larger research question (why would testing age and diversity answer the overall research question?)
  - Skip making taxonomic barplots
  - Will clarify what was meant by doing alpha and beta diversity for both aims 1 and 2 later on

## Team Meeting 4
__February 25, 2025__

RECAP:
- Finished the proposal
  - Processed data
    - categorized age metadata into 3 cohorts
    - retrained the classifier
    - created taxa barplots
    - filtered out mitochondria and chloroplast
    - generated alpha rarefaction curve
  - Wrote all required information for the proposal

AGENDA:
- Show Ritu the results of the alpha rarefaction curve and the proposed max sampling depth (how many reads and samples would be kept)
- Come up with a gameplan of how to distribute the work among the group
- Research Q: How does the composition and function of the gastric mucosal microbiome vary with age across different stages of gastric cancer?
- Experimental aims:
  - 1) Analyze the relationship between age and alpha diversity of the gastric mucosal microbiome for different stages of gastric cancer
    2) Identify if age has a significant effect on the beta diversity of the gastric mucosal microbiome at different stages of gastric cancer
    3) Identify microbial taxa that are strongly associated with distinct stages of gastric cancer across age cohorts (indicator species analysis)
    4) Investigate the impact of age on gastric mucosal metabolic function within each stage of gastric cancer

Notes during meeting:

- Alpha rarefaction curve: sampling depth of 12,000 makes sense to preserve a good number of samples
- Aim 1: Linear mixed effects regression
  - Example: Plot different values of metric, to see how alpha diversity changes across different stages of cancer
  - This will be across the three age categories, as we've categorized them
- Aim 2: Looking at beta diversity for each stage of gastric cancer including healthy controls (5, we can do 1 each), across different age groups
- Timeline:
  - Handing over project details to another team after about 4 weeks
  - Functional analysis will be pairwise
  - 2 people could start working on beta-diversity, other people can start doing indicator species analysis; work in parallel so we'll get plots faster
    - We can start working on aims 2 and 3 right now
- Filtering data for PICRUSt:
  - Removing non-bacterial samples and reads with <5 counts will change alpha rarefaction curve
  - Unsure if this method needs to be used only for the PICRUSt analysis or for other aims too; will follow up with Ritu afterwards [we'll check this before starting]
- Email works better for contacting Ritu rather than contacting through Canvas
- We might get a chance to work on feedback for proposal
- Aim 2: Mehr, Lily
- Aim 3: Shreya, Tricia
- Aim 4: Manveer
  


## Team Meeting 3
__February 17, 2025__

RECAP of what has been done since last meeting:
- Finished denoising the gastric cancer data set
- decided on research question: "How do variations in blood glucose, cholesterol, and triglycerides influence microbiome composition at different stages of cancer?"
- started working on the team proposal

AGENDA:
- Discuss team proposal
  - What is the difference between research objectives and experimental aims?
  - Is it better to split this research aim "Assess individual and combined contributions of blood glucose, cholesterol, and triglycerides on microbial diversity in healthy and in patients with gastric cancer (at different stages)" into two aims?
  - Is there a diversity metric that is best suited and required to answer our research question?
  - One of the example team proposals mentioned a "maximum read length chosen" but it was a different number than what they truncated all their reads to be. What exactly is meant by "maximum read length chosen"?

NOTES DURING MEETING:

## Team Meeting 2
__February 11, 2025__

Recap of what has been done since last meeting:
- decided on Gastric Cancer dataset
- decided to focus on biochemical metrics ex. blood glucose, triglycerides, total cholesterol
- finished demultiplexing the Gastric Cancer dataset
- Started writing outline of proposal: https://docs.google.com/document/d/1ZUtXC7PMoh7TS0NtVB6DRIZVfG7Pl0IJgav_4juS62I/edit?tab=t.0
- Ranges of the biochemical metrics to create categories to be added in metadata (be sure to add citations in the proposal):
  
Blood glucose
- High: 100 - 125 mg/dL (5.6 - 6.9 mmol/L), >125 mg/dL or 7 mmol/L is considered diabetic
- Normal: 70 - 100 mg/dL (3.9 - 5.6 mmol/L)
- Low: <70 mg/dL (<3.9 mmol/L)

Triglycerides
- Normal: <150 mg/dL (1.7 mmol/L)
- Borderline high: 150 - 199 mg/dL (1.8 - 2.2 mmol/L)
- High: 200 - 499 mg/dL (2.3 - 5.6 mmol/L)
- Very high: ≥500 mg/dL (≥5.7 mmol/L)

Total Cholesterol **
- Normal: <200 mg/dL
- Borderline high: 200-239 mg/dL
- High: >240 mg/dL

** Ranges may vary by age, ethnicity, and sex assigned at birth

Meeting Agenda:
- Discuss with Ritu what trimming parameters we should choose based on our demultiplexing results since they are varying lengths
> <img src="/QIIME2/visuals/demultiplexed_seqs_length_summary.png" height="200">
- Show her the ranges of the biochemical metrics that we plan to use as cateogries
- Create a clear and concise research question based on our dataset and specified variables
- Discuss the Team Proposal (ask any questions to clarify about the assignment)

Trimming length: 250-300 nts
- Try with the shortest read length, see if there are any issues (e.g. losing many sequences)

Depression dataset (NEW):
- Biochemical metrics (calcium, chloride, potassium, protein total serum, phosphorus, creatinine, mcv)
- Modeling to see which biochemical metrics are statistic in effecting microbiome diversity OR could just choose one/two metrics to work with
- Varying metrics (general overview with eyes, no literature research yet): LDL/HDL, glucose, neutrophils, cholesterol, LDL/HDL cholesterol
- Beck depression inventory (BDI): depression severity questionaire
- Divide samples based on BDI scores
  - see how the microbiome varies based on each metric/BDI combinations
  - functional analysis (pathways changed as a result of x condition, which microbes were likely responsible): pairwise comparisons with PI-CRUST
 
Reading break:
- Possible meeting

Proposal:
- Title:
  - Be specific
  - "Exploring", "Understanding", etc.
- Introduction/Background:
  - mention the original paper
  - introduce the dataset, we will be using x dataset to answer y question
  - Be explicit: how are we splitting up the dataset, how we plan to choose the variables to explore
    - e.g. biochemical metrics - low, normal, high
    - cite sources
- Hypothesis:
  - Back it up with evidence
- Experimental aims:
  - aim 1: taxonomic analysis
    - find out which ones are abundant and what is the count (deseq)
    - e.g. previous papers have found certain species to be abundant, so we expect these to be abundant
    - sub-bullet points
      - e.g. how cholesterol levels may impact depression (based on literature)
  - aim 2: functional analysis
    - PI-CRUST
- Dataset background:
    - age groups of patients
- Rarefaction curve
- References
  - QIIME
  - alpha/beta diversity metrics (Dr. Sun cited)
  - be specific as to what test (this may go under another section idk)
- Tone:
  - Formal
- General tips:
  - leave some time at the end to review the entire proposal to ensure consistency in vocab, tone, etc.
 
General:
- Maintain a record of who is using x file and when

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
