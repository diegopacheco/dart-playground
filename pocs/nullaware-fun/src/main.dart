class User {
  final String? name;
  final Address? address;
  User(this.name, this.address);
}

class Address {
  final String? city;
  Address(this.city);
}

void main() {
  String? nullable = null;
  print('?? operator: ${nullable ?? 'default'}');

  nullable ??= 'assigned';
  print('??= operator: $nullable');

  var user = User('Diego', Address('Curitiba'));
  print('?. chain: ${user.address?.city?.toUpperCase()}');

  var noAddress = User('Bob', null);
  print('?. null: ${noAddress.address?.city ?? 'unknown'}');

  var list = [1, 2, 3, null, 5];
  var nonNull = list.whereType<int>().toList();
  print('Non-null: $nonNull');

  String? maybeEmpty = '';
  print('isEmpty: ${maybeEmpty?.isEmpty}');

  int? num = null;
  var result = num?.isEven ?? false;
  print('Null num isEven: $result');

  var map = {'a': 1, 'b': null};
  print('Map ??: ${map['c'] ?? 'missing'}');
}
