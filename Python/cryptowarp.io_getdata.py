
#!/usr/bin/env python

# The code below is an example of how to get data from the cryptowarp.io platform API.
import requests
import json
import pandas as pd

# define the symbol
symbol = "BTCUSDT"

# define the api key
api_key = "your_api_key"

# define the headers
headers = {
    "Authorization": "Bearer " + api_key
}

# returns pandas dataframe with the data
def get_data(symbol):
    # define the url
    url = "https://cryptowarp.io/api/models/" + symbol

    # get the data
    response = requests.request("GET", url, headers=headers)

    # convert the data to a json object
    data = json.loads(response.text)

    # check if the response is successful by checking the status code and the response message
    if response.status_code == 200 and data != "unauthorized":
        # convert the data to a pandas dataframe
        df = pd.DataFrame(data)

        # return the dataframe
        return df
    else:
        # return the error message and asking the user to check the api key
        return "Error: " + data + " Please check the API key"

def main():
    # get the data
    df = get_data(symbol)

    # print the data
    print("\033[1;32;40m The data below is the response from the cryptowarp.io API for the symbol: " + symbol + "\033[0;37;40m")
    print("\033[1;32;40m You must obtain the API key from the cryptowarp.io platform and replace the api_key variable with your API key\033[0;37;40m")  

    print(df)

if __name__ == "__main__":
    main()



