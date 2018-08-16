library(knitr)
library(markdown)
library(rmarkdown)

x <- menu(c("Type '1' for Yes", "Type '0' for No"), title="Display verbose report?")

if (x==1) {
  rmarkdown::render('/Users/vnagaraju/Downloads/SFRAT_Automated-Report-Generation-master-3/SFRATReport.Rmd',  
                    output_file =  paste("SFRAT report_", SheetName,'_', Sys.Date(), ".pdf", sep=''), 
                    output_dir = '/Users/vnagaraju/Downloads/SFRAT_Automated-Report-Generation-master-3/Reports')
} else {
  rmarkdown::render('/Users/vnagaraju/Downloads/SFRAT_Automated-Report-Generation-master-3/SFRATReportNoText.Rmd',  
                    output_file =  paste("SFRAT report_NoText_", SheetName,'_', Sys.Date(), ".pdf", sep=''), 
                    output_dir = '/Users/vnagaraju/Downloads/SFRAT_Automated-Report-Generation-master-3/Reports')
}

