### About

This App allows you to analyse the stocks of the **[FTSE MIB](http://www.borsaitaliana.it/borsa/indici/indici-in-continua/dettaglio.html?indexCode=FTSEMIB&lang=en)**, the Italian index including the top 40 companies for market capitalization. It is the most important benchmark for the Italian equity market, capturing approximately 80 per cent of the domestic capitalization.
  
### Data

The data is downloaded from **[Yahoo Finance](https://finance.yahoo.com/)** and cover the last 10 years with regards to stock prices. It is important to remember that some companies were listed recently, thus the historical data might be limited.
  
### Instructions

The tab `Chart` allows you to plot the historical price of the stocks for the company selected in the panel `Select Stocks`. A few features can also help you undertake a more thorough analysis. 
  
* First, using the Range Selector at the bottom of the chart, it is possible to narrow the time window. 
* Second, using the check boxes in the side bar, it is possible to add technical indicators to the chart (e.g. moving average).

The tab `Financials` contains all the information regarding Financials, Income Statement, Balance Sheet and Valuation Multiples.

The tab `Description` explains the company's activity and history.


### R

The packages used in the R script are:

* `shiny` for building the App (`shinythemes` to select the theme) 
* `quantmod` to get the stock prices from Yahoo Finance
* `dygraph` to plot the chart
* `rvest` to get Financials and other Statistics from Internet