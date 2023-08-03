extension on String {
  bool get isBlank => trim().isEmpty;
}

void main() {
  print("Hello, World!".isBlank);
}
