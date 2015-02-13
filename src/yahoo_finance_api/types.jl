type Quotes
    names::Array{ASCIIString, 1}
    symbols::Array{ASCIIString, 1}
    properties::Array{(ASCIIString,Any),1}
end

type HistoricalData
    symbol::ASCIIString
    dates::Array{Date,1}
    open::Array{Float64,1}
    high::Array{Float64,1}
    low::Array{Float64,1}
    close::Array{Float64,1}
    volume::Array{Float64,1}
    adjusted_close::Array{Float64,1}
end