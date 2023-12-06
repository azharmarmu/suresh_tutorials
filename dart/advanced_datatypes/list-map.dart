void main() {
  List<String> fruits = ['Apple', 'Banana'];

  List<List<String>> listOfList = [
    ['apple', 'banana', 'gauva'],
    ['grapes', 'orange'],
    ['lemon', 'tomato'],
  ];

  List<Map> listOfMap = [
    {'stateName': 'chennai', 'weather': 'Rainy'},
    {'stateName': 'madurai', 'weather': 'Moderate'},
    {'stateName': 'kovai', 'weather': 'Sunny'},
  ];

  //what is the climate in madurai
  int i = 0;
  while (i < listOfMap.length) {
    if (listOfMap[i]['stateName'] == 'madurai') {
      print(
          '${listOfMap[i]['stateName'].toUpperCase()} weather is ${listOfMap[i]['weather']}');
    }
    i++;
  }
}
