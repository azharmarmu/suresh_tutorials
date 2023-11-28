/**
 * 1. Create a 3 students with name, age, class (student1=>Alex, 19, 10), (student2=>Bob, 18,10), (student3=>Clara, 19,11)
 * 2. fetch Bob age and print(Bob is 'x' years old)
 * 3. fetch clara class and print(clara is studying 'x' class)
 * 4. Add david name with smilar age as bob and class as alex
 * 5. Update Alex age to 15 and class to 10
 * 6. Print All(name, age, class)
 */

void main (){
  Map <String,dynamic> student1={'name': 'Alex',
                                 'age': 19,
                               'cls': 11,
                               };
   Map <String,dynamic> student2={'name':'Bob',
                              'age'  :18,
                               'cls' :10,
                                 };
   Map <String,dynamic> student3={'name':'clara',
                              'age'  :18,
                                'cls' :10,
                               };
  
  // 2. fetch Bob age and print(Bob is 'x' years old)
  dynamic bobname =student2['age'];
  print('${student2['name']} is ${student2['age']} years old');
  
  //* 3. fetch clara class and print(clara is studying 'x' class)
  dynamic claracls =student3['cls'];
  print('${student3['name']}is studying ${student3['cls']}class');
  
  // 4. Add david name with smilar age as bob and class as alex
  Map<String, dynamic> student4 = {'name': 'David', 'age': student2['age'], 'cls': student1['cls']};
  
  //5. Update Alex age to 15 and class to 10
  student1['ages']=15;
  student1['cls' ]=10;
  
  // 6. Print All(name, age, class)
  print([student1, student2,
         student3, student4]);
}