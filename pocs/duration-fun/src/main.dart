void main() {
  var oneDay = Duration(days: 1);
  var twoHours = Duration(hours: 2);
  var combined = oneDay + twoHours;
  print('Combined: $combined');
  print('In hours: ${combined.inHours}');
  print('In minutes: ${combined.inMinutes}');

  var marathon = Duration(hours: 3, minutes: 45, seconds: 30);
  print('Marathon: $marathon');
  var half = marathon ~/ 2;
  print('Half marathon: $half');

  var laps = [
    Duration(minutes: 4, seconds: 30),
    Duration(minutes: 5, seconds: 15),
    Duration(minutes: 4, seconds: 45),
    Duration(minutes: 5, seconds: 0),
  ];
  var total = laps.reduce((a, b) => a + b);
  print('Total laps: $total');
  print('Average: ${total ~/ laps.length}');

  var fast = Duration(seconds: 10);
  var slow = Duration(seconds: 30);
  print('Fast < Slow? ${fast < slow}');
  print('Difference: ${slow - fast}');
}
