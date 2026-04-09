# ADNI_QC
Repo for quality checking the ADNI behavioral and clinical data files.

All work should be tracked in the `progress_updates.md` file. 

All code should be stored in the `code/` folder and all figures should be saved in the `figures/` folder. 

To better understand these files, I recommend checking out the [ADNI Data User Guide website](https://adni.loni.usc.edu/help-faqs/adni-data-user-guide/). Here you can read their description of what the file is, what the values mean, etc. Once you click on this link and are on the website, on the left hand side you will see a navigation panel. If you click on 'Tables to Know/Diagnostic Information' and 'Reference/Cognitive Assessments and Questionnaires' you should find a description of all the files we will be QC-ing. 


We will QC the following files:
1. Clinical Dementia Rating (CDR) `/N/project/statadni/ADNI_QC/files/CDR_04Oct2025.csv`
2. Alzheimer’s Disease Assessment Scale Cognitive - 13 (ADAS-COG 13) `/N/project/statadni/ADNI_QC/files/ADAS_04Oct2025.csv`
3. Montreal Cognitive Assessment (MoCA) `/N/project/statadni/ADNI_QC/files/MOCA_04Oct2025.csv`
5. Mini Mental State Exam (MMSE) `/N/project/statadni/ADNI_QC/files/MMSE_04Oct2025.csv`
6. the diagnostic summary (DXSUM) `/N/project/statadni/ADNI_QC/files/DXSUM_04Oct2025.csv`

Things to keep in mind:
1. The column PTID is the subject ID column. There is longitudinal data, so you will also need to use the VISCODE2 and EXAMDATE columns to keep track of the longitudinal data for each subject.
2. We want to know how many subjects are i) stable over time (their diagnosis label doesn't change), ii) convert in a typical way (i.e., cognitively normal (CN) --> mild cognitive impairment (MCI) --> Alzheimer's disease (AD) or CN --> AD), and iii) convert in a strange way that doesn't make sense (i.e., AD --> CN or MCI --> CN --> MCI --> CN). We should exclude people that convert in a strange way.
3. We also want to better understand the difference between visits labeled as 'sc' (screen) in the VISCODE column and visits labeled as 'bl' (baseline). Do the diagnoses or summary measures ever change between these two visits? Does how many subjects have both types of visits? How far apart in time are these visits (months? days?)
