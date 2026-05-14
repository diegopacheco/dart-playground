void main() {
  var uri = Uri.parse('https://api.example.com:8080/users?name=diego&active=true#section');
  print('Scheme: ${uri.scheme}');
  print('Host: ${uri.host}');
  print('Port: ${uri.port}');
  print('Path: ${uri.path}');
  print('Query: ${uri.query}');
  print('Fragment: ${uri.fragment}');
  print('Params: ${uri.queryParameters}');

  var built = Uri(
    scheme: 'https',
    host: 'search.example.com',
    path: '/query',
    queryParameters: {'q': 'dart lang', 'page': '1'},
  );
  print('Built: $built');

  var encoded = Uri.encodeFull('https://example.com/path with spaces/file.txt');
  print('Encoded: $encoded');
  print('Decoded: ${Uri.decodeFull(encoded)}');

  var data = Uri.encodeComponent('key=value&special=a+b');
  print('Component: $data');
}
