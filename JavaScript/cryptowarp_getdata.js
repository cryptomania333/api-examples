
//  The code below is an example of how to get data from the cryptowarp.io platform API.

const axios = require('axios');

// the symbol
const symbol = "BTCUSDT";

// the api key
const api_key = "YOUR_API_KEY";

// the headers
const headers = {
    "Authorization": "Bearer " + api_key
};

// the url
const url = "https://cryptowarp.io/api/models/" + symbol;

// get the data
const response = axios.get(url, {
    headers: headers
});

// handle the response
response.then(function (response) {
    console.log(response.data);
}
).catch(function (error) {
    console.log(error.response.data);
});