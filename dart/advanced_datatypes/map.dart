void main() {
  //Map: Key-Value pair

  Map m = {}; //empty map

  Map<dynamic, dynamic> map = {
    'key1': 'abc', //pair1
    'key2': 'value2', //pair2
    2.9: 25, //pair1 is overriden
  };

  map['key1'] = 'Blob'; //modify/update a value by key
  map['key3'] = true; //add new pair to the map\

  map.remove('key1'); // to remove key

  print(map.length);

  Map<String, dynamic> student = {
    'name': 'suresh',
    'age': 25,
  };

  student['age'];
}
