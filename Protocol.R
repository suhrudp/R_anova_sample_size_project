---
title: "THA 3 Techniques ANOVA Sample Size and Statistical Analysis Plan"
author: "SP"
date: "2023-08-28"
output: word_document
---

## See the source code for the original R markdown script.

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

```{r, include=FALSE}
setwd("your/working/directory")
```

## Methodology
The study will follow a prospective study design over a 12-month period, at a Medical College and Tertiary Care Teaching Hospital in Mumbai, 
India. The study protocol adheres to the guidelines outlined in the STROBE checklist for cross-sectional studies.

### Study design and setting
This study will be conducted in the department of orthopedics at a tertiary care teaching hospital in Mumbai, India. The setting offers a 
high-volume workload, providing a large number of cases. 

### Study participants
The inclusion criteria for the study are all patients undergoing unilateral total hip arthroplasty in the department of orthopedics. The 
exclusion criteria include patients with bilateral hip involvement, patients undergoing total hip arthroplast (THA) requiring complex 
acetabular reconstruction, and those who do not give consent to participate in the study.

### Data Sources and Measurement
Data collection will be done by the co-investigator after ethical clearance from institutional ethical committee. After explaining the study 
to the patients, informed consent will be taken. In the preoperative period, in the orthopedics ward, patient details, history and LLD will 
be calculated both clinically and on antero-posterior radiograph of pelvis and both hips. In the intra-operative period, the method used 
to measure limb length discrepancy (LLD) intra-operatively will be noted. In the postoperative period, in the orthopedics ward, LLD will 
be calculated both clinically and on antero-posterior radiograph of pelvis and bilateral hips. Data will be collected on a case sheet 
and subsequently entered into an excel sheet.

### Sample Size Calculation
```{r, include=TRUE}
# this is the code used from the `pwr2ppl` package in R which provides sample size and power calculations for a lot of commonly used 
study designs.
pwr2ppl::anova1f_3(m1 = 10.13, s1 = 8, m2 = 15.12, s2 = 12, m3 = 1.1, s3 = 0.8, alpha = 0.025, n1 = 30, n2 = 30, n3 = 30)
```
Sample size is calculated to study compare clinical as well as radiological LLD between 3 different techniques in a tertiary care 
teaching hospital. After reviewing literature, the difference in preoperative and postoperative LLD measures are used.[1-3] We decided to 
use analysis of variance (ANOVA) to assess differences in limb length change between the 3 techniques. Taking 30 patients in each group, 
we would have a power of 99.99% at an alpha level of 0.025% to detect significant differences in limb lengths changes between the three techniques.

The pwr2ppl package in R is used to calculate sample size.[4]

### Statistical Methods
Continuous data will be summarized as means and standard deviations or medians and interquartile ranges as appropriate. Categorical data will 
be summarized as frequencies and percentages. Assessment of normality for continuous variables will be done using the Shapiro-Wilk 
normality test and by visualizing histograms and Q-Q plots.
Evaluation of the difference in LLD between groups of continuous variables will be done using Analysis of Variance (ANOVA). Evaluation of 
the association between categorical variables will be done using the chi-square test of independence or the Fisher’s exact test as 
appropriate.
p-values less than 0.025 will be considered to be statistically significant for 2 co-primary objectives (clinical and radiological LLD) 
using the Bonferroni correction. Data will be analysed using R (The R Project for Statistical Computing, R Core Team).

### Ethical Considerations
The study protocol will be submitted for review to the relevant institutional ethics committee before the start of the study. Informed 
consent will be obtained from all participants, ensuring they understand the study’s purpose, procedures, potential risks and benefits, 
and their rights to withdraw from the study at any time without any repercussions. All patient data will be handled with strict 
confidentiality and anonymity to protect the privacy and rights of the participants.

### Study Timeline
The study will be carried out over a 12-month period. This timeline includes patient recruitment, procedures, data collection, 
analysis, interpretation and dissemination of the findings.

## References
1.	Ranawat CS, Rao RR, Rodriguez JA, Bhende HS. Correction of limb-length inequality during total hip arthroplasty. J Arthroplasty. 
2001 Sep;16(6):715-20. doi: 10.1054/arth.2001.24442. PMID: 11547369.
2.	Gupta R, Pathak P, Singh R, Majumdar KP. Double-Stitch Technique: A Simple and Effective Method to Minimize Limb Length Discrepancy a
fter Total Hip Arthroplasty. Indian J Orthop. 2019 Jan-Feb;53(1):169-173. doi: 10.4103/ortho.IJOrtho_188_18. PMID: 30905998; PMCID: PMC6394180.
3.	Amstutz HC, Sakai DN. Total joint replacement for ankylosed hips. Indications , technique, and preliminary results. J Bone Joint Surg 
Am. 1975 Jul;57(5):619-25. PMID: 1150702.
4.	Zhang, Z., & Yuan, K.-H. (2018). Practical Statistical Power Analysis Using Webpower and R (Eds). Granger, IN: 
ISDSA Press. https://doi.org/10.35566/power
