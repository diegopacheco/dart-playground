void main() {
  var email = RegExp(r'^[\w.]+@[\w.]+\.\w+$');
  print('test@mail.com valid? ${email.hasMatch('test@mail.com')}');
  print('bad-email valid? ${email.hasMatch('bad-email')}');

  var text = 'Call 123-456-7890 or 987-654-3210 today';
  var phone = RegExp(r'\d{3}-\d{3}-\d{4}');
  var matches = phone.allMatches(text);
  print('Phones found: ${matches.map((m) => m.group(0)).toList()}');

  var csv = '  hello , world , dart  ';
  var parts = csv.split(',').map((s) => s.trim()).toList();
  print('Parsed CSV: $parts');

  var masked = text.replaceAll(phone, '***-***-****');
  print('Masked: $masked');

  var url = 'https://dart.dev/guides/language';
  var urlPattern = RegExp(r'https?://([^/]+)(.*)');
  var match = urlPattern.firstMatch(url);
  if (match != null) {
    print('Host: ${match.group(1)}');
    print('Path: ${match.group(2)}');
  }

  var words = 'one1two2three3';
  var split = words.split(RegExp(r'\d'));
  print('Split by digits: $split');
}
