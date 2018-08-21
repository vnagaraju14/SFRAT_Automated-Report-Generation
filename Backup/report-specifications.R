#Preliminary
dataset <- read_excel("./SFRAT/model_testing/model_data.xlsx",sheet = 2)  #path to the dataset

# TAB 1
confidence_lvl <- .9 #float

# TAB 2
num_failures_future_prediction <- 1
models_to_apply <- c('DSS', 'GM', 'Wei','GO','JM') #vector
mission_time <- 600
  
# TAB 3
num_failures_to_predict <- 1 #integer
additional_time_software_will_run <- 4116 #float
desired_reliability <- .9 #float
reliability_interval_length<- 600 #float

# TAB 4
percent_data_for_PSEE <- .9