library(rvest)

getDesc <- function(code){
    url <- paste0('https://finance.yahoo.com/quote/',code,'/profile')
    web <- read_html(url)
    info <- web %>% 
                html_nodes(xpath='//section//p') %>% 
                html_text()
    return(info[3])
}



