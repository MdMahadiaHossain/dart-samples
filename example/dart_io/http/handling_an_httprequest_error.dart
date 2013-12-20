/// An HTTP request may return a response, or it may generate an error. Since
/// both the response and the error are produced asychronously, you should
/// register callbacks with chained `then()` and `catchError()` calls. The
/// response is handled by the `then()` callback, and the error is handled by
/// the `catchError()` callback.

import 'package:http/http.dart' as http;

handleSuccess(http.Response response) {
  print('something went wrong');
  print(response.body);
}

handleFailure(error) {
  print('Something went wrong.');
  print(error.message);
}

void main() {
  http.get("http://some_bogus_website.org")
    .then(handleSuccess)
    .catchError(handleFailure);
}