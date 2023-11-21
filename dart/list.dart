void main() {
  List a = ['fruits', 2, 3, 4, 5.5, true, 8, 9, 10];

  //To fetch/get the length
  a.length;

  //To access value via index
  a[0]; // to get first value
  a.first; // is equal to a[0];

  a[a.length - 1]; // to get last value
  a.last; // is equal a[a.length - 1];

  //Example
  //Need list of student name
  List<String> names = ['Alex', 'Blob', 'Clara'];

  //list of student age
  List<int> ages = [20, 20, 21];

  //Advances listing: Nested List
  List listOfList = [
    names,
    ages,
  ];
}
