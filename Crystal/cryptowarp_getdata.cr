

# The code below is an example of how to get data from the cryptowarp.io platform API.
require "http/client"
require "json"

def get_data(symbol)
    # the api key
    api_key = "YOUR_API_KEY"

    # the headers
    headers = HTTP::Headers{ "Authorization" => "Bearer #{api_key}" }
    
    # the url
    url = "https://cryptowarp.io/api/models/" + symbol

    # get the data
    response = HTTP::Client.get(url, headers)

    # convert the data to a json object
    data = JSON.parse(response.body)

    # check if the response is successful by checking the status code and the response message
    if response.status_code == 200 && data != "unauthorized"
        # return the data
        return data
    else
        # return an error message
        return "Error: #{data}"
    end
end

def main
  # define the symbol
  symbol = "BTCUSDT"

  # get the data
  df = get_data(symbol)

  puts df
end

main
