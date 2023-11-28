void main(List<String> args) {
  Map<String, dynamic> student1 = {
    'name': 'Alex',
    'age': 19,
    'cls': 11,
  };
  //conditional operators (<,>,<=,>=,==,!=) => output will be boolean always

  //increament and decreament oprator
  int i = 0;

  i = i + 1; //i++; , ++i;, i+=1;

  i = i - 1; //i--; , --i;, i-=1;

  //logical operators (AND=> &&, OR=> ||, NOT=> !)
  bool ageCondition = student1['age'] < 18;
  bool classCondition = student1['cls'] == 11;
  
  bool output = ageCondition || classCondition;
  print(output);
}
