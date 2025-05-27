#########################################################################
#########################################################################
##### Reanalysis of the trend data reported in 
##### Stecyk et al. (2025, American Psychologist) 
##### on qualitative articles published in APA and APS journals.
##### By Moin Syed 
##### May 27, 2025
#########################################################################
#########################################################################

##### Article reports trend data, but not all journals are incuded in all waves
##### Remaking figures with only complete data

library(dplyr)
library(ggplot2)
library(readxl)

sessionInfo()

# R version 4.4.2
# RStudio 2025.05.0 Build 496
# ggplot2_3.5.1 
# ggplot2_3.5.1
# dplyr_1.1.4 
# readxl_1.4.3

# read in raw data from paper, from .xlsx file
# file has multiple sheets, we want sheet 4, Final Results

dat <- readxl::read_xlsx("Comprehensive Tables - ALL RESULTS.xlsx", sheet = "Final Results")
head(dat)
tail(dat)

# need to remove final summary row
dim(dat)
dat <- dat[-96,]
dim(dat)
tail(dat)

# need to replace "-" with NAs
head(dat)
dat[dat == "-"] <- NA
head(dat)

# need to convert columns to numeric
dat <- dat %>% 
  mutate_at(c(2:5,7,8), as.numeric)
head(dat)






