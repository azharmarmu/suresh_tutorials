void main() {
  List<String> fruits = [
    'apple',
    'banana',
    'cucumber',
    'mango',
    'mango',
    'mango',
    'mango',
    'mango',
    'mango',
    'mango',
    'mango',
    'mango',
  ]; //4

  // print('Fruits is ${fruits[0]}');
  // print('Fruits is ${fruits[1]}');
  // print('Fruits is ${fruits[2]}');
  // print('Fruits is ${fruits[3]}');

  for (int i = 0; i < fruits.length; i = i + 1) {
    print('Fruits is ${fruits[i]}');
  }
}
