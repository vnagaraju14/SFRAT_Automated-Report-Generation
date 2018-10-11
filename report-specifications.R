library(knitr)
library(markdown)
library(rmarkdown)
library(readxl)
library(formatR)
library(shiny)
library(DT)
library(gdata)
library(ggplot2)
library(rootSolve)

datapath <- paste0(getwd(), '/SFRAT/model_testing/model_data.xlsx')   #path to the dataset
sheetNumber <- 1          #Select the sheet number in the excel file if there are multiple sheets

datasettemp <- read_excel(datapath,sheet = sheetNumber)  
SheetName<-excel_sheets(path=datapath)[sheetNumber] 
colors <- c("navy","red","green","firebrick4","magenta") # Specify colors for your model output

# TAB 1
confidence_lvl <- .9 #Should be between 0 to 1

# TAB 2
num_failures_future_prediction <- 2 #Number of failures to predict beyond end of testing
models_to_apply <- c('DSS', 'GM', 'Wei','GO','JM') #Specify the models you would like to apply
mission_time <- 600 #Specify the mission time to compute reliability growth

# TAB 3
num_failures_to_predict <- 2 #Number of failures to predict beyond end of testing (Same as Tab 2 input, however, you can select different number than Tab 2)
additional_time_software_will_run <- 4116 #Operation/mission time beyond end of testing to compute number of failures
desired_reliability <- .9 #Specify desired reliability between 0 to 1, to estimate the testing time to achieve it within the specified mission time.
reliability_interval_length<- 600 #Mission time during which you desire to achieve the target reliability

# TAB 4
percent_data_for_PSSE <- .9 #Specify the percent of data between 0 to 1 that you would like to use for model fitting. The remaining data will be used to assess model prediction capability.

#Verbose report
dataset <- datasettemp[1:floor(dim(datasettemp)[1]),]
x <- menu(c("Type '1' for Yes", "Type '2' for No"), title="Display verbose report?")
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
