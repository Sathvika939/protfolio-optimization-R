library(quantmod)

getSymbols(c("AAPL", "MSFT", "GOOG"), from = "2020-01-01")

returns <- na.omit(merge(
  dailyReturn(AAPL),
  dailyReturn(MSFT),
  dailyReturn(GOOG)
))

colnames(returns) <- c("AAPL", "MSFT", "GOOG")

save(returns, file = "data/returns.RData")