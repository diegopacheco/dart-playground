enum Sucks { enums, getters, setters }

extension ParseToString on Sucks {
  String toShortString() {
    return this.toString().split('.').last;
  }
}

void main() {
  var sucks = [Sucks.enums.toShortString(),
               Sucks.getters.toShortString(),
               Sucks.setters.toShortString()];
  print('What does sucks? ' + sucks.toString());
}
