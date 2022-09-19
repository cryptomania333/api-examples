#! /usr/bin/perl
# The code below is an example of how to get data from the cryptowarp.io platform API.


use LWP::UserAgent;

# the symbol
my $symbol = "BTCUSDT";

# the api key
my $api_key = "YOUR_API_KEY";

# the url
my $url = "https://cryptowarp.io/api/models/" . $symbol;

# the headers
my $headers = {
    "Authorization" => "Bearer " . $api_key
};

# get the data
my $ua = LWP::UserAgent->new;
my $response = $ua->get($url, %$headers);

# handle the response
if ($response->is_success) {
    my $json = $response->decoded_content;
    print $json;
}
else {
    print $response->status_line;
}
