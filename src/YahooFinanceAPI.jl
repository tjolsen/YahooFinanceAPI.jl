module YahooFinanceAPI

# QuoteProperties submodule
# Used for the Quotes API
# see online documentation of Yahoo API for full list
# https://code.google.com/p/yahoo-finance-managed/wiki/enumQuoteProperty
module QuoteProperties
include("yahoo_finance_api/QuoteProperties.jl");
end

# MarketQuoteProperties submodule
# used for Industry and Sector APIs
# see online documentation of Yahoo API for full list
# https://code.google.com/p/yahoo-finance-managed/wiki/enumMarketQuoteProperties
module MarketQuoteProperties
include("yahoo_finance_api/MarketQuoteProperties.jl");
end

# IndustryCodes submodule
# Used for using the "Companies" API
# See full list source at
# http://pastie.org/6419646#205
module IndustryCodes
include("yahoo_finance_api/IndustryCodes.jl")
end

# Sectors submodule
# Used Industries API. Must select the sector number
module Sectors
include("yahoo_finance_api/Sectors.jl")
end

# Localization submodule
# used to localize RSS feed
module Localization
include("yahoo_finance_api/Localization.jl")
end

#include library files
include("yahoo_finance_api/types.jl")
include("yahoo_finance_api/apiCalls.jl")


# export
export HistoricalData, fetchHistoricalData
export QuoteProperties, fetchQuotes
export IndustryCodes, MarketQuoteProperties
export fetchSectors
export Sectors, fetchIndustries, fetchCompanies
export Localization, fetchRSS

end