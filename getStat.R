library(rvest)

getStat <- function(code){
    url <- paste0('https://finance.yahoo.com/quote/',code,'/key-statistics')
    web <- read_html(url)
    tables <- web %>% html_table(header=F)
    ValMeasures <- tables[[2]]
    colnames(ValMeasures) <- c('Valuation Measures','')
    ValMeasures[1,1] <- 'Market Cap'
    ValMeasures[2,1] <- 'Enterprise Value'
    ValMeasures[4,1] <- 'Forward P/E'
    ValMeasures[5,1] <- 'PEG Ratio (5 yr expected)'
    ValMeasures[8,1] <- 'Enterprise Value/Revenue'
    ValMeasures[9,1] <- 'Enterprise Value/EBITDA'
    Financials <- tables[[3]]
    colnames(Financials) <- c('Fiscal Year End','')
    Profitability <- tables[[4]]
    ManEffectiveness <- tables[[5]]
    IncomeStat <- tables[[6]]
    colnames(IncomeStat) <-  c('Income Statement','')
    BalanceSheet <- tables[[7]]
    colnames(BalanceSheet) <- c('Balance Sheet','')
    CashFlow <- tables[[8]]
    stat_list <- list(ValMeasures,Financials,IncomeStat,BalanceSheet)
    return(stat_list)
}



