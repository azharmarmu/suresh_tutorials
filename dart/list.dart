void main() {
  List l = []; //empty list
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
  List<String> names = [
    'Alex',
    'Blob',
    'Clara',
  ];

  //list of student age
  List<int> ages = [20, 21, 20];
  ages[1] = 67; //edit/update exisiting value
  // ages[15] = 67; //will cause error as per line 24 we have only 0-2 index
  ages.add(30); //add new value

  ages.remove(20); //remove value based on index search(0..n)

  print(ages);
  //Advances listing: Nested List
  List listOfList = [
    names,
    ages,
  ];
}
