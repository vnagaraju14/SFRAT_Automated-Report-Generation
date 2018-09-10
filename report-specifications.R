library(knitr)
library(markdown)
library(rmarkdown)
library(readxl)
library(formatR)

#Preliminary
datapath <- paste0(getwd(), '/SFRAT/model_testing/SYS1_data.xlsx')#path to the dataset

datasettemp <- read_excel(datapath,sheet = 1)  #Specify the sheet with the data
SheetName<-excel_sheets(path=datapath)[1] #Specify the sheet selected in the above line
colors <- c("navy","red","green","firebrick4","magenta")
# TAB 1
confidence_lvl <- .9 #float

# TAB 2
num_failures_future_prediction <- 2
models_to_apply <- c('DSS', 'GM', 'Wei','GO','JM') #vector
mission_time <- 600

# TAB 3
num_failures_to_predict <- 2 #integer
additional_time_software_will_run <- 4116 #float
desired_reliability <- .9 #float
reliability_interval_length<- 600 #float

# TAB 4

percent_data_for_PSSE <- .9

#Verbose report

x <- menu(c("Type '1' for Yes", "Type '2' for No"), title="Display verbose report?")


xy <- readline(prompt="Subset data? Type '1' for Yes and '0' for No___")

if (xy==1) {
  ds <- readline(prompt="How many percent of data should be used in each subset? (Input should be between 0 to 1)___")
  ds <- as.double(ds) 
  dsi <- ds
  while(dsi<=1){
    dataset <- datasettemp[1:floor(dsi*dim(datasettemp)[1]),]
    rmarkdown::render(paste0(getwd(),'/SFRATReport.Rmd'),  
                      output_file =  paste("SFRAT report_", SheetName,'_',dsi,'_', Sys.Date(), ".pdf", sep=''), 
                      output_dir = './Reports') 
    
    dsi=dsi+ds;
  }
  
  
  
} else {
  dataset <- read_excel(datapath,sheet = 1)
  rmarkdown::render(paste0(getwd(),'/SFRATReport.Rmd'),  
                    output_file =  paste("SFRAT report_", SheetName,'_', Sys.Date(), ".pdf", sep=''), 
                    output_dir = './Reports') 
}


