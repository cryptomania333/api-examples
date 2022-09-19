defmodule CryptowarpGetdata do
  # The code below is an example of how to get data from the cryptowarp.io platform API.

  def get_data() do
    # the simbol
    symbol = "BTCUSDT"

    # the url
    url = "https://cryptowarp.io/api/models/" <> symbol

    # the api key
    api_key = "YOUR_API_KEY"

    # the headers
    headers = [{"Authorization", "Bearer #{api_key}"}, {"Content-Type", "application/json"}]

    case HTTPoison.get!(url, headers) do
      %HTTPoison.Response{status_code: 200, headers: _resp_headers, body: body} ->
        Poison.decode!(body)

      %HTTPoison.Response{status_code: _, body: body} ->
        {:error, body}
    end
  end
end
