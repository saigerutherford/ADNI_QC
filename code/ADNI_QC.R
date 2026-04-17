# ---- packages ----
library(tidyverse)
library(ggrain)      # geom_rain()
library(shadowtext)
library(patchwork)

# =========================
# 1. Load data
# =========================
df_dxsum <- readr::read_csv('/N/project/statadni/ADNI_QC/files/DXSUM_04Oct2025.csv')
df_adas <- readr::read_csv('/N/project/statadni/ADNI_QC/files/ADAS_04Oct2025.csv')
df_cdr <- readr::read_csv('/N/project/statadni/ADNI_QC/files/CDR_04Oct2025.csv')
df_moca <- readr::read_csv('/N/project/statadni/ADNI_QC/files/MOCA_04Oct2025.csv')
df_mmse <- readr::read_csv('/N/project/statadni/ADNI_QC/files/MMSE_04Oct2025.csv')

