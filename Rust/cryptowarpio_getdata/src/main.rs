
// The code below is an example of how to get data from the cryptowarp.io platform API.
use reqwest::Client;
use serde_json::Value;
use polars::prelude::*;
use std::io::Cursor;

#[tokio::main]
async fn main() {
    // define the symbol
    let symbol = "BTCUSDT";

    // define the api key
    let api_key = "YOUR_API_KEY";

    // define the url by concatenating the symbol and the api key
    let url = format!("https://cryptowarp.io/api/models/{}", symbol);

    // define the headers by including the Authorization: Bearer
    let mut headers = reqwest::header::HeaderMap::new();
    headers.insert("Authorization", format!("Bearer {}", api_key).parse().unwrap());

    // get the data
    let client = Client::new();
    let res = client.get(url).headers(headers).send().await.unwrap().text().await.unwrap();
    
    // convert the data to a json object
    let data: Value = serde_json::from_str(&res).unwrap();

    // check if the response is successful by checking the response message.
    if data != "Unauthorized" {
        // convert the data to a polars dataframe
        let json = Cursor::new(res);
        let df = JsonReader::new(json)
        .infer_schema_len(Some(2))
        .with_batch_size(2)
        .finish()
        .unwrap();
        
        // print the data 
        println!("\x1b[32m The data below is the response from the cryptowarp.io API for the symbol: {}", symbol);
        println!("\x1b[32m You must obtain the API key from the cryptowarp.io platform and replace the api_key variable with your API key");
        println!("{:?}", df);
    } else {
        // return the error message and asking the user to check the api key
        println!("Error: {} Please check the API key", data);
    }
}

// 1. git clone this repo
// 2. cd into the repo
// 3. replace the api_key variable with your API key
// 4. cargo run

// the output should be similar to the one below:
// 
// The data below is the response from the cryptowarp.io API for the symbol: BTCUSDT
// You must obtain the API key from the cryptowarp.io platform and replace the api_key variable with your API key
// shape: (rows num, cols num)
// +---------------------+---------+
// | date                | price   |
// | ---                 | ---     |
// | str                 | f64     |
// +=====================+=========+
// | "2021-02-01 00:00:00" | 34713.0 |
// +---------------------+---------+
// |
