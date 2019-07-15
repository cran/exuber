## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  message=FALSE
)

## ----echo=FALSE, message=FALSE-------------------------------------------
library(exuber)

## ----dataset-------------------------------------------------------------
stocks <- aggregate(EuStockMarkets, nfrequency = 52, mean)

## ----estimation----------------------------------------------------------
est_stocks <- radf(stocks,lag = 1)

## ----summary-------------------------------------------------------------
summary(est_stocks)

## ----diagnostics---------------------------------------------------------
diagnostics(est_stocks)

## ----datestamp, fig.width = 9--------------------------------------------
autoplot(est_stocks)

## ------------------------------------------------------------------------
# Minimum duration of an explosive period 
rot = round(log(nrow(stocks))) # log(n) ~ rule of thumb

datestamp(est_stocks, min_duration = rot)

## ----fig.width = 7, fig.height=2-----------------------------------------
datestamp(est_stocks) %>% 
  autoplot()

