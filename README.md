Script to Generate Report for the Software Failure and Reliability Assessment Tool (SFRAT) 
--------------------------------

An R script to automatically apply a free and open source software failure and reliability assessment tool to generate a pdf. Any resources related to the [SFRAT] is available at https://sasdlc.org/lab/assets/projects/srt.html.

Lance Fiondella, Assistant Professor, University of Massachusetts Dartmouth


Installation
-------
- Before installing R libraries. Please make sure you have some version of Perl installed. For Linux and Mac computers it is not usually required. For Windows machines you can download it here: http://strawberryperl.com/

- Download all the contents from this repository and open the install_script.R file using R Studio. Set the working directory to the source file location under the menu 'Session' in RStudio or using setwd("source file location").

- To install the required libraries, please run the following command in the R terminal
```R
source("install_script.R")
```
A window will pop up for you to select the server from which to download the packages. Select a server and the script will download and install packages.

 
To Run
-------

- Open the report-specifications.R file to specify input parameters as well as the path to the excel file contaning the input data. 

- In the console, run the following command:  

```R
source(‘report-specifications.R’)
```

- This will display an option to display verbose report in the console. Select ‘1’ to display verbose report, `0' otherwise. 

- The report will be generated and saved in the 'Report' folder within the same directory.


TODO:

- [ ] Python port of this is in progress.
- [ ] Data subsetting option to enable online data analysis is in progress.


Acknowledgement
--------------
This research was supported by Natioanl Aeronautics and Space Administration (NASA) SARP under Grant Number (#).



Copyright and License
----------------------
Code release under [MIT LICENSE](https://github.com/LanceFiondella/srt.core/blob/master/LICENSE.md). 
