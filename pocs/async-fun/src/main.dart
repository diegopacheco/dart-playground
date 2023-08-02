
const oneSecond = Duration(seconds:1);

Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond);
  print(message);
}

void main() {
  print("waiting... ");
  printWithDelay('Hello, World! (1 sec delay)');
}