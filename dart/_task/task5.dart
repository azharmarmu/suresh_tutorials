/**
 * 1. Create a 3 students with name, age, class (student1=>Alex, 19, 10), (student2=>Bob, 18,10), (student3=>Clara, 19,11)
 * 2. Check student eligbilty for education-scholarship(1. cls is >=10 and  2. age is >=19)
 * 3. Compare alex and bob age (print the value as bool)
 * 4. Check student eligbilty for sports-scholarship(1. cls is >10 or  2. age is <19)
 */


void main() {
  //1. Create a 3 students with name, age, class (student1=>Alex, 19, 10),
  //(student2=>Bob, 18,10), (student3=>Clara, 19,11)

  Map<String, dynamic> student1 = {
    'name': 'Alex',
    'age': 19,
    'cls': 10,
  };
  Map<String, dynamic> student2 = {
    'name': 'bob',
    'age': 18,
    'cls': 10,
  };
  Map<String, dynamic> student3 = {
    'name': 'clara',
    'age': 19,
    'cls': 11,
  };
//2. Check student eligbilty for
//education-scholarship(1. cls is >=10 and  2. age is >=19)
  int scholarshipCls = 10;
  int scholarshipAge = 20;
  bool eduScholarshipStd1 = (student1['cls'] >= scholarshipCls) &&
      (student1['age'] >= scholarshipAge);
  bool eduScholarshipStd2 = (student2['cls'] >= scholarshipCls) &&
      (student2['age'] >= scholarshipAge);
  bool eduScholarshipStd3 = (student3['cls'] >= scholarshipCls) &&
      (student3['age'] >= scholarshipAge);

  //X is eligible/Not Eligible for Education Scholarship;
  String outputStd1 = eduScholarshipStd2 ? 'Eligible' : 'Not Eligible';
  print('${student2['name']} is $outputStd1 for Education Scholarship');

  print('${student1['name']}is eligible:$eduScholarshipStd1');
  print('${student2['name']}is eligible:$eduScholarshipStd2');
  print('${student3['name']}is eligible:$eduScholarshipStd3');

//3. Compare alex and bob age (print the value as bool)
  bool isAlexOlderThanBob = student1['age'] == student2['age'];
  print('Comparition of Alex and Bob age:$isAlexOlderThanBob');

// 4 . Check student eligbilty for sports-scholarship(1. cls is >10 or  2. age is <19)
  bool isAlexSportsEligible = student1['cls'] > 10 || student1['age'] < 19;
  bool isBobSportsEligible = student2['cls'] > 10 || student2['age'] < 19;
  bool isClaraSportsEligible = student3['cls'] > 10 || student3['age'] < 19;

  print('${student1['name']}is eligible :$isAlexSportsEligible');
  print('${student2['name']}is eligible :$isBobSportsEligible');
  print('${student3['name']}is eligible :$isClaraSportsEligible');
}
