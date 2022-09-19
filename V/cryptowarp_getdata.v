// The code below is an example of how to get data from the cryptowarp.io platform API.
// To run the example: ./v run cryptowarp_getdata.v
import net.http
import x.json2

fn main() {
	symbol := 'BTCUSDT'
	api_key := 'YOUR_API_KEY'
	mut request := http.Request{
		url: 'https://cryptowarp.io/api/models/$symbol'
		method: .get
	}
	request.add_header(.authorization, 'Bearer $api_key')
	result := request.do() ?
	raw_data := json2.raw_decode(result.body) ?
	prices_list := raw_data.as_map()
 	println(prices_list)
}

