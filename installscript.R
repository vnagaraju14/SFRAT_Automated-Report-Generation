#This file should be run the first time using this program to ensure R is up to date and all dependencies are intalled and loaded
#will aotomatically update R if on windows, and install all packages for any platform.
#run via source with echo in the top right drop down menu, or with Ctrl+Shift+Enter

if (version$major < 3 || (version$major == 3 && version$minor < 2.2)){ #checks if R is already up to date
  #update R
  if(.Platform$OS.type == "windows"){#automatic update for windows users
    if(!require(installr)) {
      install.packages("installr", repos="http://cran.rstudio.com/"); library(installr)} #load / install+load installr
    
    # using the package:
    updateR() # this will start the updating process of your R installation.  It will check for newer versions, and if one is available, will guide you through the decisions you'd need to make.
  }
  else{
    stop("Your machine requires a newer version of R. Please download the updated version for your platform at https://cran.rstudio.com/")
  }
  
}


#checks for each dependancy and loads or installs then loads

if(!require(shiny)) {install.packages("shiny", repos="http://cran.rstudio.com/");library(shiny)}  #shiny is the main interface package
if(!require(DT)) {install.packages("DT", repos="http://cran.rstudio.com/");  library(DT)} #DT
if(!require(knitr)) {install.packages("knitr", repos="http://cran.rstudio.com/");library(knitr)} #knitr
if(!require(installr)) {install.packages("installr", repos="http://cran.rstudio.com/");library(installr)} 
if(!require(markdown)) {install.packages("markdown", repos="http://cran.rstudio.com/");library(markdown)} 
if(!require(rmarkdown)) {install.packages("rmarkdown", repos="http://cran.rstudio.com/");library(rmarkdown)} 
if(!require(readxl)) {install.packages("readxl", repos="http://cran.rstudio.com/");library(readxl)} 
if(!require(formatR)) {install.packages("formatR", repos="http://cran.rstudio.com/");library(formatR)} 
if(!require(gdata)) {install.packages("gdata", repos="http://cran.rstudio.com/");library(gdata)} 
if(!require(Rcpp)) {install.packages("Rcpp", dependencies = TRUE, repos="http://cran.rstudio.com/");library(Rcpp)} 
if(!require(ggplot2)) {install.packages("ggplot2", dependencies = TRUE, repos="http://cran.rstudio.com/");library(ggplot2)} 
if(!require(rootSolve)) {install.packages("rootSolve", repos="http://cran.rstudio.com/");library(rootSolve)} 
if(!require(colorspace)) {install.packages("colorspace", repos="http://cran.rstudio.com/");library(colorspace)} 
if(!require(data.table)) {install.packages("data.table", dependencies = TRUE, repos="http://cran.rstudio.com/");library(data.table)} 
if(!require(htmltools)) {install.packages("htmltools", repos="http://cran.rstudio.com/");library(htmltools)}

