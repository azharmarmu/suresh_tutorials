void main() {
  List<String> fruits = ['apple', 'banana', 'mango'];

  //fetch/get  banana
  //update/replace banana with Gauva
  fruits[1] = 'Gauva';

  //add grape to the fruits
  // fruits[2] = 'Grapes'; //this is wrong;
  fruits.add('Grapes'); //this is correct

  fruits.removeRange(1, 3);

  fruits.removeLast(); //aple
  fruits.add('Grapes');

  fruits.remove('apple');
  fruits.removeLast();

  print(fruits);
}


