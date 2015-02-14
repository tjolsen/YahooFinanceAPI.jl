module YahooFinanceAPI

# QuoteProperties submodule
# see online documentation of Yahoo API for full list
# https://code.google.com/p/yahoo-finance-managed/wiki/enumQuoteProperty
module QuoteProperties
include("yahoo_finance_api/QuoteProperties.jl");
end


#include library files
include("yahoo_finance_api/types.jl")
include("yahoo_finance_api/apiCalls.jl")


# export
export HistoricalData, fetchHistoricalData



end