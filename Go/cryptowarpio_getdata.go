
// The code below is an example of how to get data from the cryptowarp.io platform API.

package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
	"strings"
)

func main() {
	// the symbol
	symbol := "BTCUSDT"

	// the api key
	api_key := "your_api_key"

	// the url
	url := "https://cryptowarp.io/api/models/" + symbol

	// the headers
	headers := http.Header{}
	headers.Add("Authorization", "Bearer "+api_key)

	// request with headers
	req, err := http.NewRequest("GET", url, nil)
	req.Header = headers
	client := &http.Client{}
    response, err := client.Do(req)

	if err != nil {
		log.Fatal(err)
	}

	// handle the response
	defer response.Body.Close()
	body, err := ioutil.ReadAll(response.Body)
	if err != nil {
		log.Fatal(err)
	}

	// print the response
	fmt.Println(strings.TrimSpace(string(body)))
}
