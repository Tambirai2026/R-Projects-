# Project 1 and 2: R and Bioconductor - DNA sequence and genomic location 

These two projects use R and Bioconductor to explore the BRCA1 and EGFR genes at both the DNA sequence and genomic location levels. It demonstrates how to retrieve biological sequence data from NCBI, perform basic sequence analysis, represent genomic coordinates, and retrieve gene annotations using Bioconductor databases.

# Overview

BRCA1 and EGFR Gene Sequence & Genomic Annotation Analysis

A beginner-level bioinformatics project focused on analyzing BRCA1 (Breast Cancer 1) and EGFR (Lung Cancer) using R and Bioconductor. The project combines NCBI sequence retrieval, DNA sequence manipulation, pattern searching, genomic coordinate analysis, and gene annotation to demonstrate fundamental computational biology workflows.

### Workflow

1. Retrieve BRCA1 and EGFR sequences

Used `rentrez::entrez_fetch()` to retrieve the BRCA1 sequence from NCBI.
Saved the sequence as `brca1.fasta`.

2. Analyze the DNA sequence

Determined sequence length using `width()`.
Extracted the first 30 bases using `subseq()`.
Counted occurrences of the `"ATG"` pattern using `countPattern()`.
Generated the reverse complement using `reverseComplement()`.

3. Represent genomic location

Created a `GRanges` object containing the BRCA1 chromosome, genomic coordinates, and strand.
Calculated the genomic interval width.

4. Retrieve gene annotation

Used `AnnotationDbi` and `org.Hs.eg.db` to identify the BRCA1 ENTREZ Gene ID and full gene name.

5. Interpret biological information

Summarized what the sequence characteristics and genomic location reveal about BRCA1 and EGFR.

### Sequence Analysis

* DNA sequence retrieval
* FASTA files
* Sequence length calculation
* Subsequence extraction
* Pattern searching
* Reverse-complement analysis

### Genomic Analysis

* `GRanges` objects
* Chromosomal coordinates
* Genomic intervals
* Strand information
* Genomic feature width

### Biological Databases & Annotation

* NCBI Entrez
* rentrez`
* `AnnotationDbi`
*`org.Hs.eg.db`
* ENTREZ Gene identifiers
* Gene annotation

### Bioinformatics Skills

* NCBI data retrieval
* Computational DNA analysis
* Genome annotation
* Reproducible analysis using R/Bioconductor
* Biological interpretation of genomic data

# Project 3 - Plant Growth Analysis Using R

This project uses R programming to analyse plant weight measurements under three experimental conditions: Treatment A, Treatment B, and Control.

The aim was to explore differences in plant weight between treatment groups using descriptive statistics, data visualisation, and one-way analysis of variance (ANOVA).

This project demonstrates how to use R for biological data analysis, statistical testing, and scientific visualisation.

## 2. Project Objectives

* Import and explore biological data from an Excel spreadsheet.
* Calculate the mean plant weight for each treatment group.
* Visualise plant weight distributions using boxplots, violin plots, and histograms.
* Perform a one-way ANOVA to assess whether mean plant weight differed between treatment groups.
* Interpret the statistical results in the context of plant growth.

## 3. Tools and Technologies

* **Programming language:** R
* **Development environment:** RStudio
* **Data source:** Excel spreadsheet containing plant growth measurements
* **Package installation:** CRAN

### R Packages Used

| Package or Function   | Purpose                                                |
| --------------------- | ------------------------------------------------------ |
| `readxl`              | Imported plant growth data from an Excel spreadsheet.  |
| `ggplot2`             | Created statistical graphs and visualisations.         |
| `aggregate()`         | Calculated mean plant weight for each treatment group. |
| `aov()`               | Performed one-way analysis of variance.                |
| `summary()`           | Displayed the ANOVA results.                           |
| `str()` and `names()` | Examined the dataset structure and column names.       |
| `View()`              | Inspected the dataset in RStudio.                      |

## 4. Dataset Description

The dataset contained 30 plant observations and the following variables:

* `Plant_ID`: Unique identifier for each plant.
* `Treatment`: Experimental group assigned to the plant.
* `Weight`: Recorded plant weight.
* `Growth_Effect_vs_Control`: Additional descriptive variable included in the source spreadsheet.

The analysis focused on `Treatment` and `Weight`.

The dataset included three groups: Treatment A, Treatment B, and Control.

## 5. Methodology

### Step 1: Data Import and Exploration

I used the `readxl` package to import the Excel spreadsheet into R. The dataset was inspected to examine its structure, variables, and observations.

### Step 2: Descriptive Statistics

The `aggregate()` function was used to calculate the mean plant weight for each treatment group.

### Step 3: Data Visualisation

Three graphs were generated using `ggplot2`:

* **Boxplot:** Compared plant weight distributions across treatment groups.
* **Violin plot:** Visualised the distributions and shapes of plant weights within each group.
* **Histogram:** Examined the overall distribution of plant weight measurements.

### Step 4: Statistical Analysis

A one-way ANOVA was performed using:

`aov(Weight ~ Treatment, data = plant_data)`

The test assessed whether there was evidence of a difference in mean plant weight among the three treatment groups.

The significance level was interpreted using a threshold of 0.05.

## 6. Results

### Mean Plant Weight

The analysis produced the following mean weights:

| Treatment Group | Mean Plant Weight |
| --------------- | ----------------: |
| Treatment A     |             4.661 |
| Treatment B     |             5.526 |
| Control         |             5.032 |

Treatment B had the highest mean plant weight, followed by the Control group and Treatment A.

### One-Way ANOVA Results

| Statistic          | Result |
| ------------------ | -----: |
| F-statistic        |  4.846 |
| Degrees of freedom |  2, 27 |
| p-value            | 0.0159 |
| Significance level |   0.05 |

The ANOVA produced a p-value of 0.0159, which is below the 0.05 significance threshold.

This provides statistical evidence that **at least one treatment group's mean plant weight differed from another group's mean**.

## 7. Interpretation

Treatment B had the highest observed mean plant weight (5.526), while Treatment A had the lowest (4.661). The Control group had a mean weight of 5.032.

The ANOVA results indicate an overall statistically significant difference in mean plant weight among the three groups.

The boxplot and violin plot provided complementary ways to examine differences in the distributions of plant weights. The histogram showed the overall distribution of the recorded measurements.

The histogram alone does not establish that the data follow a normal distribution. Further checks would be needed to assess distributional assumptions.

## 8. Key R Skills Developed

In this project, I practised:

* Importing Excel data into R.
* Inspecting and understanding data structures.
* Calculating group-specific summary statistics.
* Creating boxplots, violin plots, and histograms.
* Performing one-way ANOVA.
* Interpreting p-values and statistical significance.
* Communicating biological data through graphs and summary tables.

## 10. Conclusion

This project demonstrated how R can be used to explore biological measurements, visualise differences between experimental groups, and perform statistical hypothesis testing.

Treatment B had the highest observed mean plant weight. One-way ANOVA indicated a statistically significant overall difference in mean plant weight among the treatment groups.






