import Foundation

// The code below is an example of how to get data from the cryptowarp.io platform API.
// the symbol
let symbol = "BTCUSDT"

// the api key
let api_key = "YOUR_API_KEY"

// the headers
let headers = [
    "Authorization": "Bearer " + api_key
]

// the url
let url = URL(string: "https://cryptowarp.io/api/models/" + symbol)!

// get the data
var request = URLRequest(url: url)
request.httpMethod = "GET"
request.allHTTPHeaderFields = headers
let task = URLSession.shared.dataTask(with: request) { data, response, error in
    let httpResponse = response as? HTTPURLResponse
    guard httpResponse?.statusCode != 401 else {
        print("unouthorized")
        return
    }
    guard let data = data, error == nil else {
        print(error?.localizedDescription ?? "No data")
        return
    }

    let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
    if let responseJSON = responseJSON as? [[String: Any]] {
        print(responseJSON)
    }
}
task.resume()