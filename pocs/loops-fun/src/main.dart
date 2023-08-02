void main() {
  
  print("Flying objects");
  var flybyObjects = ['Cow','Chinela','UFO'];
  for (final object in flybyObjects) {
    print(object);
  }

  print("12 months: ");
  for (int month = 1; month <= 12; month++) {
     print(month);
  }

  var year = 2015;
  print("Good years, little we knew: ");
  while (year <= 2019) {
    print(year);
    year += 1;
  }

}
