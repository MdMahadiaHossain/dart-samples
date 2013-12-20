/// Use the `headers` field of the Response object to get a headers Map.
/// The map keys are the header fields, and the map values are the values of
/// those fields.

import 'package:http/http.dart' as http;

void main() {
  var url = 'http://httpbin.org/';
  http.get(url).then((response) {

    // Get the headers map.
    print(response.headers.keys);

    // Get header values.
    print("access-control-allow-origin' = ${response.headers['access-control-allow-origin']}");
    print("content-type = ${response.headers['content-type']}");
    print("date = ${response.headers['date']}");
    print("content-length = ${response.headers['content-length']}");
    print("connection = ${response.headers['connection']}");
  });
}