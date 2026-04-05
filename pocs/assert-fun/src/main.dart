class BankAccount {
  final String owner;
  double _balance;
  BankAccount(this.owner, double initial)
      : assert(initial >= 0), _balance = initial;

  void deposit(double amount) { assert(amount > 0); _balance += amount; }

  void withdraw(double amount) {
    assert(amount > 0);
    assert(amount <= _balance);
    _balance -= amount;
  }

  double get balance => _balance;
  @override
  String toString() => '$owner: \$$_balance';
}

void main() {
  var account = BankAccount('Diego', 100.0);
  print(account);
  account.deposit(50.0);
  print('After deposit: $account');
  account.withdraw(30.0);
  print('After withdrawal: $account');
  assert(account.balance == 120.0);
  print('All assertions passed!');
}
