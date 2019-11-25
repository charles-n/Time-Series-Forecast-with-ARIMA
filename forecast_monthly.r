setwd('D:/Users/cnguyen14/Documents/projects/adhoc/rmnt_forecast_emea')

library(RODBC)
library(forecast)

### data prep
MD <- readxl::read_excel( path="./nts_2015_2018.xlsx")
MD <- MD %>% melt("Month",  variable.name = "Year", value.name = "rmnt") 
MD$Year <- MD$Year  %>% as.character() %>% as.numeric()
MD <- msts(MD, seasonal.periods = c(12), start = min(MD$Year))

### visual diagnostic
tsdisplay(MD[,3], lag.max = 30, main='Property NTS')
# Acf(MD[,3])
# Pacf(MD[,3])


### arima model and plot
fit <- Arima(MD[,3], order=c(6,0,6), seasonal= list(order =c(0,1,0), period=24) )
# fit <- Arima(MD[,3], order=c(1,1,12), seasonal= list(order =c(0,1,0), period=24) )
    fit %>% summary
    cat("mape is", ((fit$x - fit$fitted)/fit$x) %>% tail(24) %>% abs %>% mean)
    tsdisplay(fit$residuals, lag.max=30, main='NUECC RMNTS')
    
    ### forecast
    fcast <- forecast(fit, h=24*3)
    # fcast$mean[fcast$mean > 2480] <- 2480
    plot(fcast)
    
    # newdata <- MD %>% tail(36) 
    # refit <- Arima(newdata[,3], model=fit)  
    # 
    # fcast <- forecast(refit, h=24*3)
    # plot(fcast)
    