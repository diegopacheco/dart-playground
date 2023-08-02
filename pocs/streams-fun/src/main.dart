void main() {
  var counterStream =
    Stream<int>.
      periodic(const Duration(seconds: 1), (x) => x).
      take(15);
  
  counterStream.forEach(print);
}
