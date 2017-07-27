# Shiny App FTSE MIB Stocks

This project is part of the *Developing Data Product* course by Coursera. 
The goal is to create a Shiny Application and a Presentation.

The Shiny App is available on [ShinyApps]( https://angelf.shinyapps.io/stocksscreener/).

The Presentation is available on [RPubs](https://rpubs.com/angelf/ftsemibapp).

## The App

The Shiny App allows the users to analyse the stocks of the FTSE MIB, the Italian index including the top 40 companies for market capitalization. The user selects the company and the App downloads the data from Internet. 
The section *Help* explains how to use the App.

## Files

* `ui.R` and `server.R` are the files to create the Application
* `help.md` contains text used in the section *Help* in the App
* `list.R` contains the list of 
* `getStat` and `getDesc` contain functions used in the App

The packages used in the R script are:

* `shiny` for building the App (`shinythemes` to select the theme) 
* `quantmod` to get the stock prices from Yahoo Finance
* `dygraph` to plot the chart
* `rvest` to get Financials and other Statistics from Internet