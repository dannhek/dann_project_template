#########################################################################
#File Name: [File.R]
#Author: Dann Hekman (github.com/dannhek)
#Project: [Project Name]
#File Purpose: 
## 		[What this File Does]
#Dependencies:
##		[What other files in this Repo does this file call/need?]
#Dependents:
##		[What other files in this Repo call/need this file?]
#Output Files:
##		[What files does this script create/store?]
#########################################################################
#Update History:
##[Date] - Created
##[Date] - [Update]
#########################################################################

##Set WD, set Seed, and load needed functions
setwd('~')
set.seed(sum(as.numeric(charToRaw("New Project Name"))))
rm(list=ls())
for (pkg in c('ggplot2','reshape2','gower','plyr','caret','odbc','RMariaDB','readr','RODBC')) { 
     if (!is.element(pkg,installed.packages()[,1])) { 
          r <- getOption("repos") 
          r["CRAN"] <- "http://cran.us.r-project.org" 
          options(repos = r) 
          rm(r) 
          install.packages(pkg) 
     } 
     library(pkg,character.only = T) 
} ; rm(pkg)