using HTTPClient.HTTPC
using Dates

function fetchHistoricalData(sym::ASCIIString, fromDate::Dates.Date, 
                             toDate=Dates.today()::Dates.Date, freq="d")
    
    fromY = Dates.year(fromDate);
    fromM = Dates.month(fromDate);
    fromD = Dates.day(fromDate);
    
    toY = Dates.year(toDate);
    toM = Dates.month(toDate);
    toD = Dates.day(toDate);
    
    url1 = "http://ichart.yahoo.com/table.csv?s=$sym&a=$(fromM-1)&b=$(fromD)"
    url2 = "&c=$(fromY)&d=$(toM-1)&e=$(toD)&f=$(toY)&g=$freq&ignore=.csv"
    url = "$url1$url2"

    page = HTTPC.get(url);
    text = ASCIIString(page.body.data)
    
    if (text[1] == '<')
        error("Bad data pull for $sym")
    end
    
    table = readdlm(IOBuffer(text), ',', Any)

    HD = HistoricalData(sym, [Dates.Date(s) for s in table[end:-1:2,1]],
                        float64(table[end:-1:2,2]),
                        float64(table[end:-1:2,3]),
                        float64(table[end:-1:2,4]),
                        float64(table[end:-1:2,5]),
                        float64(table[end:-1:2,6]),
                        float64(table[end:-1:2,7]))
    
    return HD
end