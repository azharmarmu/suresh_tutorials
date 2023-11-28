void main() {
  List<String> fruits = [
    'apple',
    'apple',
    'apple',
    'banana',
    'banana',
    'banana',
    'banana',
    'cucumber',
    'cucumber',
    'cucumber',
    'cucumber',
    'mango',
    'mango',
    'mango',
    'mango',
  ];

  int i = 0; //defintion
  while (i < fruits.length/**conditon check */) { 
    print('Fruits is ${fruits[i]}');
    i = i + 1; //action
  }
}
