library(knitr)
library(markdown)
library(rmarkdown)

x <- menu(c("Type '1' for Yes", "Type '0' for No"), title="Display verbose report?")

if (x==1) {
  rmarkdown::render(paste0(getwd(),'/SFRATReport.Rmd'),  
                    output_file =  paste("SFRAT report_", SheetName,'_', Sys.Date(), ".pdf", sep=''), 
                    output_dir = './Reports')
} else {
  rmarkdown::render(paste0(getwd(),'/SFRATReportNoText.Rmd'),  
                    output_file =  paste("SFRAT report_NoText_", SheetName,'_', Sys.Date(), ".pdf", sep=''), 
                    output_dir = './Reports')
}

