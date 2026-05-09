class Student {
  final String name;
  final double gpa;
  Student(this.name, this.gpa);
  @override
  String toString() => '$name($gpa)';
}

void main() {
  var numbers = [5, 2, 8, 1, 9, 3, 7, 4, 6];
  numbers.sort();
  print('Sorted: $numbers');
  numbers.sort((a, b) => b.compareTo(a));
  print('Descending: $numbers');

  var words = ['banana', 'apple', 'cherry', 'date'];
  words.sort((a, b) => a.length.compareTo(b.length));
  print('By length: $words');

  var students = [
    Student('Alice', 3.8),
    Student('Bob', 3.9),
    Student('Charlie', 3.5),
    Student('Diana', 3.9),
  ];
  students.sort((a, b) {
    var cmp = b.gpa.compareTo(a.gpa);
    return cmp != 0 ? cmp : a.name.compareTo(b.name);
  });
  print('By GPA desc, name asc: $students');

  var stableOrder = List.of(students);
  stableOrder.sort((a, b) => a.name.compareTo(b.name));
  print('By name: $stableOrder');
}
