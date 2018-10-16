# edit below for script parameters #



sheetNumber <- 1									#select which sheet to pick
filePath <- '/SFRAT/model_testing/model_data.xlsx'	#designate file location

#Tab 1
confidence_lvl <- 1									#laplace test confidence level

#Tab 2
num_failures_future_prediction <- 3					#number of future failures to predict
models_to_apply <- c('DSS', 'GM', 'Wei','GO','JM')	#models included, by default is all
mission_time <- 600									#given mission time

#Tab 3
num_failures_to_predict <- 3						#number of future failures to predict
additional_time_software_will_run <- 4116 			#future prediction time
desired_reliability <- .9 							#between 0-1, desired software reliability
reliability_interval_length<- 600 					#interval size

#Tab 4
percent_data_for_PSSE <- .9							#predictive sum of squares, percentage


verbose_report <- 2									#1 for verbose report, 2 for non-verbose





#do not edit below --------------------------------------------------------------------------------------#

library("knitr")
library("markdown")
library("rmarkdown")
library("readxl")
library("formatR")
library("shiny")
library("DT")
library("gdata")
library("ggplot2")
library("rootSolve")

datapath <- paste0(getwd(), filePath)
datasettemp <- read_excel(datapath,sheet = sheetNumber)  #Specify the sheet with the data
SheetName<-excel_sheets(path=datapath)[sheetNumber] #Specify the sheet selected in the above line
colors <- c("navy","red","green","firebrick4","magenta")



#Verbose report
dataset <- datasettemp[1:floor(dim(datasettemp)[1]),]
x <- verbose_report #1 yes 2 no
rmarkdown::render(paste0(getwd(),'/SFRATReport.Rmd'),output_file =  paste("SFRAT report_", SheetName,'_', Sys.Date(), ".pdf", sep=''),output_dir = './Reports') 


#Uncomment the below code to use data subsetting option
#xy <- readline(prompt="Subset data? Type '1' for Yes and '0' for No___")

#if (xy==1) {
#  ds <- readline(prompt="How many percent of data should be used in each subset? (Input should be between 0 to 1)___")
#  ds <- as.double(ds) 
#  dsi <- ds
#  while(dsi<=1){
#    dataset <- datasettemp[1:floor(dsi*dim(datasettemp)[1]),]
#    rmarkdown::render(paste0(getwd(),'/SFRATReport.Rmd'),output_file =  paste("SFRAT report_", SheetName,'_',dsi,'_', Sys.Date(), ".pdf", sep=''), output_dir = './Reports') 
#    dsi=dsi+ds;
#  }
#  } else {
#  dataset <- read_excel(datapath,sheet = 1)
#  rmarkdown::render(paste0(getwd(),'/SFRATReport.Rmd'), output_file =  paste("SFRAT report_", SheetName,'_', Sys.Date(), ".pdf", sep=''),output_dir = './Reports') 
#}
