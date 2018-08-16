# SFRAT_Automated-Report-Generation
----------------------------------------------

This project includes a script to generate an automated report for the Software Failure and Reliability Assessment Tool (SFRAT) available at https://sasdlc.org/lab/projects/srt.html 

The script is written in R under the supervision of Dr. Lance Fiondella

To-do:

# Data Sub setting option:
At given time step of say 1000 for SYS1 data – then we will have to use the times between failures
1)	Data sub setting – 10% at a time
  a.	Compute the predictions and plot it as a function of time
  b.	Relative error plot on the predictions
2)	Plot AIC and PSSE
3)	Display predictions using data sub setting
4)	Plot actual and predicted number of failures

# Format of the report: 
1)	Time axis – 2E4 is little bit difficult – Make it similar to what is on the website - (NOTE: xaxp = c(x1, x2, n) is not necessarily working for this. Ggplot only allows specifying the start and end points along with the number of ticks in between.)
2)	Failure intensity - or other models is skewed and can barely see anything - any way to address 
  a.	Exclude model from the plot if it is skewing the overall figure – ylimit has been specified to avoid skewing
3)	Numbers on axes should be similar to the SFRAT tool
4)	Tab 3 - add rows for more than one failure prediction - (Note: Tab 3 - multiple values are listed in an unsorted manner. However, number of failures specified in the report_specifiactions.R is not making any difference in the output)

NOTE: Precision values on the table -  no more than 4 decimal points and right alignment
