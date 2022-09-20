
# //  The code below is an example of how to get data from the cryptowarp.io platform API.

library(httr)
library(jsonlite)

# the symbol
symbol <- "BTCUSDT"

# the api key
api_key <- "YOUR_API_KEY"

# the url
url <- paste0("https://cryptowarp.io/api/models/", symbol)

# get the data
response <- GET(url, add_headers(Authorization = paste0("Bearer ", api_key)))

# handle the response
if (response$status_code == 200) {
    data <- fromJSON(content(response, "text"))
    print(data)
} else {
    print(content(response, "text"))
}
