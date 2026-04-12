void main() {
  var now = DateTime.now();
  print('Now: $now');
  print('Year: ${now.year} Month: ${now.month} Day: ${now.day}');

  var birthday = DateTime(1990, 6, 15);
  print('Birthday: $birthday');

  var diff = now.difference(birthday);
  print('Days alive: ${diff.inDays}');

  var future = now.add(Duration(days: 30));
  print('30 days from now: $future');

  var past = now.subtract(Duration(hours: 48));
  print('48 hours ago: $past');

  print('Is before? ${past.isBefore(now)}');
  print('Is after? ${future.isAfter(now)}');

  var utc = now.toUtc();
  print('UTC: $utc');

  var weekday = now.weekday;
  var days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  print('Weekday: ${days[weekday - 1]}');
}
