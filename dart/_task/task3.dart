/**
 * 1. Create a student list name('Alex','Bob', 'Clara'), list age(14, 15, 16), list class(9,10,11)
 * 2. fetch Bob age and print(Bob is 'x' years old)
 * 3. fetch clara class and print(clara is studying 'x' class)
 * 4. Add david name with smilar age as bob and class as alex
 * 5. Update Alex age to 15 and class to 10
 * 6. Print All(name, age, class)
 */

void main() {
  //1. Create a student list name('Alex','Bob', 'Clara'), list age(14, 15, 16), list class(9,10,11)

  List<String> studentNames = ['Alex', 'Bob', 'Clara'];
  List<int> studentAges = [14, 15, 16,];
  List<int> studentClasses = [9, 10, 11];

  //2. fetch Bob age and print(Bob is 'x' years old)
  int bobIndex = studentNames.indexOf('Bob'); //2
  String bobName = studentNames[bobIndex];
  int bobAge = studentAges[bobIndex];
  print('${bobName} is $bobAge years old');

  //4. Add david name with smilar age as bob and class as alex
  int alexIndex = studentNames.indexOf('Alex');
  int alexCls = studentClasses[alexIndex];

  studentNames.add('David');
  studentAges.add(bobAge);
  studentClasses.add(alexCls);

  print(studentNames);
  print(studentAges);
  print(studentClasses);

  //Methods of Lis
  // length, add, addAll, remove(all kind of remove), indexOf.
}
