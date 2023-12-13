class Student {
  Student(); //not compulsory to mention default constructor
  
  String name = 'Alex';
  int cls = 10;
  int age = 15;
  String gender = 'M';

  void printDetails() {
    print('Name: $name');
    print('Class: $cls');
    print('Age: $age');
    print('Gender: $gender');
  }

  void printName() {
    print('Name: $name');
  }
}

void main() {
  Student stdObj = Student();

  stdObj.printDetails();
  stdObj.printName();
}
