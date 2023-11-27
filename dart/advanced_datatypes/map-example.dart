void main() {
  Map<String, dynamic> student1 = {
    'name': 'Alex',
    'age': 19,
    'class': 11,
  };
  Map<String, dynamic> student2 = {
    'name': 'Bob',
    'age': 18,
    'class': 10,
  };
  
  Map<String, dynamic> student3 = {
    'name': 'Clara',
    'age': 18,
    'class': 11,
  };

  //Alex is 19 years old
  print('${student1['name']} is ${student1['age']} years old');
}
