void main() {
  String notNullString = "Hi, I'm not null.";
  print(notNullString);

  //String x = null;
  //print(x);
  // Error: The value 'null' can't be assigned to a 
  // variable of type 'String' because 'String' is not nullable.

  String? nullable = null;
  print(nullable);

}
