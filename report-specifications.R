#Preliminary
<<<<<<< HEAD
datapath <- "/Users/vnagaraju/Desktop/SYS1_data.xlsx"#path to the dataset
=======
datapath <- "C:/Users/vnagaraju/Downloads/SFRAT_Automated-Report-Generation-master/SFRAT_Automated-Report-Generation-master/SFRAT/model_testing/NASA_SFRAT_Case_Study.xlsx"#path to the dataset
>>>>>>> origin/master
dataset <- read_excel(datapath,sheet = 1)  #Specify the sheet with the data
SheetName<-excel_sheets(path=datapath)[1] #Specify the sheet selected in the above line
colors <- c("navy","red","green","firebrick4","magenta")
# TAB 1
confidence_lvl <- .9 #float

# TAB 2
num_failures_future_prediction <- 1
models_to_apply <- c('DSS', 'GM', 'Wei','GO','JM') #vector
mission_time <- 600
  
# TAB 3
num_failures_to_predict <- 2 #integer
additional_time_software_will_run <- 4116 #float
desired_reliability <- .9 #float
reliability_interval_length<- 600 #float

# TAB 4
<<<<<<< HEAD
percent_data_for_PSSE <- .9
=======
percent_data_for_PSSE <- .9
>>>>>>> origin/master
