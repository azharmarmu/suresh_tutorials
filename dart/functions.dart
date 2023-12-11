void main() {
  print(multiplication(10, 20));

  print(division(b: 10, a: 100));

  mixedFunction([1, 2], name: 'Alex');
}

//no arg function
int sum() {
  int a = 10;
  int b = 20;

  int result = a + b;

  return result;
}

//argumented function - positional function
num multiplication(int a, int b) {
  return a * b;
}

//argumented function - named function
num division({int a = 50, required int b}) {
  return a / b;
}

void mixedFunction(
  List<int> sNo, {
  required String name,
  int? age,
  String gender = 'M',
}) {
  print(sNo);
  print(name);
  print(age);
  print(gender);
}
