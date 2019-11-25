# Time-Series-Forecast-with-ARIMA
Ingest four years of monthly aggregated data from excel file into R, and forecast monthly data a few years beyond dataset

This code is written in R which produces a time series forecast via the ARIMA modelling method and uses the following packages
  * forecast : modelling component
  * readxl : reading excel files
  * dplyr : personal code preference for readability by using the pipe function '%>%'

There is a sample excel file which may be downloaded to run with the R code, and a png image file to know what is expected in the output.  You will also notice light data prepping to fit into the arima function and a simple display of the autocorrelation plot.

This was operational with R 3.6.1
