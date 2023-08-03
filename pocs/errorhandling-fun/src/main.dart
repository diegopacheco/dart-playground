class OutOfLlamasException implements Exception {
  String cause;
  OutOfLlamasException(this.cause);
}

void breedMoreLlamas(){
  throw OutOfLlamasException('Out of llamas!');
}

void buyMoreLlamas(){
  print("ok - lets get more LLAMAS!");
}

void main() {
   try {
    breedMoreLlamas();
  } on OutOfLlamasException {
    buyMoreLlamas();
  }
}
