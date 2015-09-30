type Quotes
    name::ASCIIString
    symbols::ASCIIString
    properties::Array{Tuple{ASCIIString,Any},1}
end

type HistoricalData
    symbol::ASCIIString
    dates::Array{Dates.Date,1}
    open::Array{Float64,1}
    high::Array{Float64,1}
    low::Array{Float64,1}
    close::Array{Float64,1}
    volume::Array{Float64,1}
    adjusted_close::Array{Float64,1}
end