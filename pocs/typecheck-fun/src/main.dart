void describe(Object obj) {
  if (obj is String) {
    print('String: "$obj" (length=${obj.length})');
  } else if (obj is int) {
    print('Int: $obj (even=${obj.isEven})');
  } else if (obj is double) {
    print('Double: $obj');
  } else if (obj is List) {
    print('List: $obj (length=${obj.length})');
  } else if (obj is Map) {
    print('Map: $obj (keys=${obj.keys.toList()})');
  } else {
    print('Unknown: ${obj.runtimeType}');
  }
}

void main() {
  var items = <Object>['hello', 42, 3.14, [1, 2], {'a': 1}, true];
  for (var item in items) {
    describe(item);
  }

  Object val = 'dart';
  print('is String: ${val is String}');
  print('is! int: ${val is! int}');
  print('runtimeType: ${val.runtimeType}');

  num n = 42;
  if (n is int) {
    print('Promoted to int: ${n.toRadixString(16)}');
  }
}
