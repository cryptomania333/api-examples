// The code below is an example of how to get data from the cryptowarp.io platform API.
#import <Foundation/Foundation.h>

// the symbol
NSString *symbol = @"BTCUSDT";

// the api key
NSString *api_key = @"YOUR_API_KEY";

// the headers
NSDictionary *headers = @{
    @"Authorization": [@"Bearer " stringByAppendingString:api_key]
};

// the url
NSString *url = [@"https://cryptowarp.io/api/models/" stringByAppendingString:symbol];

// sent bearer token request
NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url]];
[request setHTTPMethod:@"GET"];
[request setAllHTTPHeaderFields:headers];

// get the response
NSURLSession *session = [NSURLSession sharedSession];
NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
    if (error) {
        NSLog(@"%@", error);
    } else {
        NSLog(@"%@", [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);
    }
}];
[dataTask resume];

// wait for the response
[[NSRunLoop currentRunLoop] run];




