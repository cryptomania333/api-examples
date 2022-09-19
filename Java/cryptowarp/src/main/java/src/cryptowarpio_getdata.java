package src;
import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import java.io.IOException;

public class cryptowarpio_getdata {
    // The code below is an example of how to get data from the cryptowarp.io platform API.
    // define the symbol
    static String symbol = "BTCUSDT";

    // define the api key
    static String api_key = "YOUR_API_KEY";

    // parameterized function with the symbol as the parameter
    // it returns pandas dataframe with the data
    public static JSONArray getData(String symbol) {
        // define the url
        url = "https://cryptowarp.io/api/models/" + symbol;

        CloseableHttpClient client = HttpClients.createDefault();
        CloseableHttpResponse resp = null;
        JSONArray result = null;
        HttpGet get = new HttpGet(url);
        // define headers
        get.setHeader("Authorization", "Bearer " + api_key);

        try {
            // get the data
            resp = client.execute(get);
            HttpEntity entity = resp.getEntity();
            String retSrc = EntityUtils.toString(entity);
            // parsing JSON
            result = new JSONArray(retSrc); // Convert String to JSON Object
            return result;
        } catch (IOException ioe) {
            System.err.println("Something went wrong getting the data: ");
            ioe.printStackTrace();
        } catch (Exception e) {
            System.err.println("Unknown error: ");
            e.printStackTrace();
        }
        return result;
    }

    public static void main(String[] args) {
        // get the data
        JSONArray df = getData(symbol);

        // print the data
        System.out.println("The data below is the response from the cryptowarp.io API for the symbol: " + symbol);
        System.out.println(
                "You must obtain the API key from the cryptowarp.io platform and replace the api_key variable with your API key");
        System.out.println(df.toString());
    }
}