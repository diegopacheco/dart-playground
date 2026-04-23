import 'dart:convert';

void main() {
  var person = {'name': 'Diego', 'age': 35, 'skills': ['Dart', 'Go', 'Rust']};
  var jsonString = jsonEncode(person);
  print('JSON: $jsonString');

  var decoded = jsonDecode(jsonString) as Map<String, dynamic>;
  print('Name: ${decoded['name']}');
  print('Age: ${decoded['age']}');
  print('Skills: ${decoded['skills']}');

  var list = [
    {'id': 1, 'item': 'Keyboard'},
    {'id': 2, 'item': 'Mouse'},
  ];
  var jsonList = jsonEncode(list);
  print('List JSON: $jsonList');

  var decodedList = jsonDecode(jsonList) as List<dynamic>;
  for (var item in decodedList) {
    print('Item ${item['id']}: ${item['item']}');
  }

  var nested = {'user': {'name': 'Ana', 'address': {'city': 'Berlin'}}};
  var nestedJson = jsonEncode(nested);
  print('Nested: $nestedJson');
}
