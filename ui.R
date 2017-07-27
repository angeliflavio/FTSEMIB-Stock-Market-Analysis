library(shiny)
library(dygraphs)
library(markdown)
library(shinythemes)

# List of 40 companies in the FTSE MIB
source('list.R')

# Application
shinyUI(navbarPage(theme = shinythemes::shinytheme("spacelab"),title='FTSE MIB Stocks',
        tabPanel('Analysis',
                 sidebarLayout(
                     sidebarPanel(
                         selectInput('stock','Select Stocks',choices=list),
                         br(),
                         h4('Technical Indicators'),
                         checkboxInput('ma1',label = 'Moving Average 1'),
                         checkboxInput('ma2',label = 'Moving Average 2'),
                         sliderInput('ma1n',label = 'Days in Moving Average 1',min = 1,max = 300,value = 50),
                         sliderInput('ma2n',label = 'Days in Moving Average 2',min = 1,max = 300,value = 200)
                     ),
                     mainPanel(
                         tabsetPanel(
                             tabPanel('Chart',
                                      br(),
                                      textOutput('attention'),
                                      br(),
                                      dygraphOutput('plot1')
                                      ),
                             tabPanel('Financials',
                                      flowLayout(
                                          tableOutput('fin1'),
                                          tableOutput('fin2'),
                                          tableOutput('fin3'),
                                          tableOutput('fin4'))
                                      ),
                             tabPanel('Description',
                                      br(),
                                      textOutput('desc'))
                         )
                     )
                 )
                 ),
        tabPanel('Help',
                 includeMarkdown('help.md')
        )
))


