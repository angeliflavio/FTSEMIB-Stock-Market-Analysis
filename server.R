library(quantmod)
library(shiny)

# Function to get Statistics for a specific company
source('getStat.R')

#Function to get Description of the company
source('getDesc.R')

# Application
shinyServer(function(input, output) {
    
    
    stock <- reactive({
        x <- Ad(getSymbols(input$stock,auto.assign = FALSE))
        if (input$ma1){
            if (input$ma1n<nrow(x)){
                x$ma1 <- rollapply(x[,1],FUN=function(x)mean(x,na.rm = T),
                                   width=input$ma1n,align='right')
            }
        }
        if (input$ma2){
            if (input$ma2n<nrow(x)){
                x$ma2 <- rollapply(x[,1],FUN=function(x)mean(x,na.rm = T),
                                   width=input$ma2n,align='right')
            }
        }
        return(x)
    })
    
    output$plot1 <- renderDygraph({
        x <- stock()
        s <- input$stock
        dygraph(x,main = s) %>% dyRangeSelector()
    })
    
    output$fin1 <- renderTable({
        stat <- getStat(input$stock)
        return(stat[[1]])
    })
 
    output$fin2 <- renderTable({
        stat <- getStat(input$stock)
        return(stat[[2]])
    })
  
    output$fin3 <- renderTable({
        stat <- getStat(input$stock)
        return(stat[[3]])
    })
    
    output$fin4 <- renderTable({
        stat <- getStat(input$stock)
        return(stat[[4]])
    })
    
    output$desc <- renderText({
        d <- getDesc(input$stock)
        return(d)
    })
    
    output$attention <- renderText({
        if (input$stock %in% c('UBI.MI','UNI.MI')){
            message <- 'Apoligies for the chart, the source has a temporary issue with a few prices for this stock.'
            return(message)
        }
    })
    
})



