/**
 * 
 * Create a class for college Application
 * use default constructor
 * Properties:
 *  -Data members/data definition: name, age, city, father-name, group(school group like A1,A2,C)
 *  -Member functions/Method: getStudentNameAndAge, getAllDetails
 */

void main() {
  CollegeApplication s1 = CollegeApplication(
      name: 'Alex', group: 'A1', city: 'Mumbai', fatherName: 'Watson', age: 20);
  s1.getStudentNameAndAge();

  CollegeApplication s2 = CollegeApplication(
      name: 'Box', group: 'C', city: 'Chennai', fatherName: 'Samson', age: 19);

  s2.getStudentNameAndAge();
}

class CollegeApplication {
  late String name;
  late int age;
  late String city;
  late String fatherName;
  late String group;

  CollegeApplication({
    required this.name,
    required this.age,
    required this.city,
    required this.fatherName,
    this.group = 'C',
  });

  void getStudentNameAndAge() {
    print('Name: $name\t Age: $age');
  }

  getAllDetails() {
    print('Name: $name');
    print('Age: $age');
    print('City: $city');
    print('Father Name: $fatherName');
    print('Group: $group');
  }
}
