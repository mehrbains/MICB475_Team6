# MICB475: Team 6

## Team Meeting 9
__April 1, 2025__

### Research Question: How does the composition and function of the gastric mucosal microbiome vary with age across different stages of gastric cancer?

### Experimental Aims
- Aim 1: Analyze the relationship between age and alpha diversity of the gastric mucosal microbiome for different stages of gastric cancer
- Aim 2: Identify if age has a significant effect on the beta diversity of the gastric mucosal microbiome at different stages of gastric cancer
- Aim 3: Identify microbial taxa that are strongly associated with distinct stages of gastric cancer across age cohorts
- Aim 4: Investigate the impact of age on gastric mucosal metabolic function within each stage of gastric cancer

RECAP:
- prepared slide deck for presentations
- presenting for team 5

AGENDA: 
- discuss indicator species analysis results
- discuss manuscript outline

MEETING NOTES: 

- ISA
  - 2 species came up for 0.7 and 0.8 thresholds; 1 for middle-aged (intestinal neoplasia) and 1 for elderly (gastric cancer)
  - Supplemental table 1: 2 rows, acknowledge limitations in discussion, include p-value too
- Manuscript
  - Figure captions in past tense
  - All findings in past tense, unless presenting the findings then use present tense
  - Fig 3 is DESeq (relative abundance); omit and go straight to Fig 4
  - Fig 4 (now Fig 3) is functional analysis (relative increase/decrease of pathways)
  - Total: 3 figures, 1 supplemental table
  - Use CHECKLIST for manuscript
- Survey incoming this week


## Team Meeting 8
__March 25, 2025__

### Research Question: How does the composition and function of the gastric mucosal microbiome vary with age across different stages of gastric cancer?

### Experimental Aims
- Aim 1: Analyze the relationship between age and alpha diversity of the gastric mucosal microbiome for different stages of gastric cancer
- Aim 2: Identify if age has a significant effect on the beta diversity of the gastric mucosal microbiome at different stages of gastric cancer
- Aim 3: Identify microbial taxa that are strongly associated with distinct stages of gastric cancer across age cohorts
- Aim 4: Investigate the impact of age on gastric mucosal metabolic function within each stage of gastric cancer

RECAP:
- performed Linear-Mixed Effect Regression Analysis
- started writing the methods section of the manuscript

AGENDA:
- present all acquired results from our analyses to Dr. Evelyn Sun: https://docs.google.com/presentation/d/1AK5DUa_nwt1GDVPxwsxnwoSOonJ7MNLPSvbo3Pkitb0/edit?usp=sharing
- interpret and discuss what the results mean
  - how to present the results in the RESULTS section of the manuscript
    - ex. do we combine indicator species analysis and core microbiome analysis results?
- ask how to create a heatmap for the suggestion: "This one is a bit more related to your proposal.
Please add an extra objective: correlate the age groups to different stages of cancer. It would be in a heatmap format and it would tell you whether there is a correlation or not between the two which may link your two variables better."
- ask any questions about the class presentations

MEETING NOTES:

Aim 1:
- Add ribbon on lines for linear-mixed effect regression analysis; the more narrow the ribbon, the better the best fit line
- Ran Spearman’s and no significant correlation when keeping age as numeric (not binned into categories)

Aim 2:
- Variance is pretty low for PCoA plots
- No significant difference for beta diversity 

Aim 3:
- ISA table: high number of indicator species; need to filter using cutoff of 0.8 (can include a few 0.7’s but not lower than that); probably not a lot of indicator species based on results for alpha and beta diversity 
- Core microbiome analysis: young adults have a unique profile in healthy (mostly not shared); rest is all shared for other stages; interpret meaning of this?

Aim 4:
- DESeq: only GC stage had significantly different pathways; young is set as reference (for IM and IN, no young adult samples so used middle aged as reference); make bar graph to show specific taxa that are differentially abundant; last plot is young adult vs. elderly which was the only significant plot (also need bar graph here); keep cutoffs as -2 and 2 for plots
- Only seeing differences at last stage of cancer

Overall:
- Young adults do seem to have functional differences but not really taxonomic differences
- No age effect in early stages of cancer, but significant difference between young and elderly in terms of functionality at last stage of cancer 
- Biological rationale: younger people have more unique microbes usually and then they lose it in cancer context?
- No big diversity differences
- Small taxonomic differences that drive functional differences
- Literature review: pathways to see if they’re associated with worse or better outcomes or are neutral
- Maybe losing commensals and enriching pathogens?
- Maybe worse complications for younger people with gastric cancer compared to elderly?
- Young people are clearly losing their profile with cancer context
- Literature review: do younger people tend to have worse GC outcomes? 

Figure 1: alpha and beta diversity 
- A) Faith’s PD linear mixed-effect regression, include ribbons and stats in figure legend
- B) Weighted Unifrac w/o ellipses PCoA graph, include p value in legend

Table 1:
- Maybe ISA table, filter and see if there are any indicators (if there are ~ decent [species], summarize species)

Figure 2: Core microbiome analysis
- A-E) keep 0.8 prevalence, all 5 graphs; explain young adult samples missing from IM and IN categories

Figure 3: DESeq
- A) Bar plot, just young vs. elderly
- no volcano plot

Figure 4: Functional analysis
- A) Bar plot, just young vs. elderly
- B) Volcano plot

Supplemental:
- Maybe ISA table

Presentation:
- Specific slide titles
- Ex. Young adults experience functional changes (if pathways turn out to be mostly neutral) 

Figures:
- Nicely formatted figures for feedback for next meeting 
- Can send slide deck to Ritu for feedback later this week
- Next week is last meeting


## Team Meeting 7 
__March 18, 2025__

### Research Question: How does the composition and function of the gastric mucosal microbiome vary with age across different stages of gastric cancer?

### Experimental Aims
- Aim 1: Analyze the relationship between age and alpha diversity of the gastric mucosal microbiome for different stages of gastric cancer
- Aim 2: Identify if age has a significant effect on the beta diversity of the gastric mucosal microbiome at different stages of gastric cancer
- Aim 3: Identify microbial taxa that are strongly associated with distinct stages of gastric cancer across age cohorts (indicator species analysis)
- Aim 4: Investigate the impact of age on gastric mucosal metabolic function within each stage of gastric cancer

RECAP:

AIM 3: Core Microbiome Analysis

_Healthy Core Microbiome_

Prevalence = 0.7
> <img src="/Rscripts/Aim3/gc_healthy_venn.png" height="400"> 

Prevalence = 0.8
> <img src="/Rscripts/Aim3/gc_healthy_venn0.8.png" height="400"> 

_Intraepithelial neoplasia - there is no "Young Adult" category_

Prevalence = 0.7
> <img src="/Rscripts/Aim3/gc_IN_venn.png" height="400"> 

Prevalence = 0.8
> <img src="/Rscripts/Aim3/gc_IN_venn0.8.png" height="400"> 

_Intestinal metaplasia - there is no "Young Adult" category_

Prevalence = 0.7
> <img src="/Rscripts/Aim3/gc_IM_venn.png" height="400"> 

Prevalence = 0.8
> <img src="/Rscripts/Aim3/gc_IM_venn0.8.png" height="400"> 

_Gastric Cancer_

Prevalence = 0.7
> <img src="/Rscripts/Aim3/gc_gastric_venn.png" height="400"> 

Prevalence = 0.8
> <img src="/Rscripts/Aim3/gc_gastric_venn0.8.png" height="400"> 

_Chronic Gastritis_

Prevalence = 0.7
> <img src="/Rscripts/Aim3/gc_chronic_venn.png" height="400"> 

Prevalence = 0.8
> <img src="/Rscripts/Aim3/gc_chronic_venn0.8.png" height="400"> 

MEETING NOTES:

- Put figures on slides for next team meetings, so we can share figures with Dr. Sun on screen in meeting room
- Aim to finish analysis by next week
- Oral presentation rubric will be available soon, will share slides with other group by March 30
- Find papers we can cite for age differences in different cancer types 
- Ritu will look at PERMANOVA and get back to us

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
- For permanova results:
  - Likely will split them into multiple plots for easier interpretation
  - Interpreting the results for 'model'; will get back to this later
- Input for alpha diversity: if metadata file is used, go back to original so that age is a continuous variable
- Oral presentations are on Apr 1 and 3; we have ~ 2 weeks before handing over the project to another team


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
 
MEETING NOTES:
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

MEETING NOTES:
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

RECAP:
- Finished denoising the gastric cancer data set
- decided on research question: "How do variations in blood glucose, cholesterol, and triglycerides influence microbiome composition at different stages of cancer?"
- started working on the team proposal

AGENDA:
- Discuss team proposal
  - What is the difference between research objectives and experimental aims?
  - Is it better to split this research aim "Assess individual and combined contributions of blood glucose, cholesterol, and triglycerides on microbial diversity in healthy and in patients with gastric cancer (at different stages)" into two aims?
  - Is there a diversity metric that is best suited and required to answer our research question?
  - One of the example team proposals mentioned a "maximum read length chosen" but it was a different number than what they truncated all their reads to be. What exactly is meant by "maximum read length chosen"?

MEETING NOTES:
- Research objective is more of a general purpose of the study, along with research Q
- Experimental aims is the specific workflow to answer the research Q and our rationale/hypothesis behind them


## Team Meeting 2
__February 11, 2025__

RECAP:
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

AGENDA:
- Discuss with Ritu what trimming parameters we should choose based on our demultiplexing results since they are varying lengths
> <img src="/QIIME2/visuals/demultiplexed_seqs_length_summary.png" height="200">
- Show her the ranges of the biochemical metrics that we plan to use as cateogries
- Create a clear and concise research question based on our dataset and specified variables
- Discuss the Team Proposal (ask any questions to clarify about the assignment)

MEETING NOTES:

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

MEETING NOTES:

- Next week:
  - Make new metadata categories for biochemical variables
    - Categorize by lab/clinical parameters, according to literature standards
    - Make copy of original metadata file
  - Outline proposal
- Process data before proposal is due
