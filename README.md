# Time-Series-Forecast-with-ARIMA
Ingest four years of monthly aggregated data from an excel file into R, and forecast monthly data a few years beyond dataset

This code is written in R which produces a time series forecast via the ARIMA modeling method and uses the following packages
  * forecast - modeling component
  * readxl - reading sheets from an excel files
  * dplyr - personal coding preference for readability by using the pipe function: %>%

There is a sample excel file which may be downloaded to run with the R code, and a png image file to visualize what is expected in the output.  

![Github ARIMA Image](https://github.com/charles-n/Time-Series-Forecast-with-ARIMA/blob/master/nts_forecast.png)

You will also notice light data prepping to fit into the ARIMA function and a simple display of an autocorrelation plot which is helpful for determing the autoregressive and moving average parameters of the ARIMA model.

This code was operational with version 3.6.1 of R.
