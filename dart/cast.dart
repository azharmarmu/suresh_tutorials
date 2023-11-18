void main() {
  //cast => change/convert from one type to another 
  //eg: string=>int, int=>string, int=>double

  //Possible casting
  //num=>int,double,string
  //double=>int,num,string
  //int=>double,num,string
  //string=>double,num,int,bool
  //bool=>string

  //Non-possible casting
  //bool=> num,double,int and vice-versa
  //int=>string
  //string=>int

  //category
  //Implict cast => Autmoatically sdk will cast/convert
  //Explict cast => Manually have to cast/convert

  //Implict cast Example
  double weightDouble = 65; //int=>double
  num weightNum = weightDouble; //double=>num
  int ageInt = 30;
  num ageNum = ageInt; //int=>num

  //Explict ast Example
  int ageIntExplict = 25.0.toInt(); //double=>int
  num ageNumExplicit = 35;
  ageIntExplict = ageNumExplicit.toInt(); //num=>int

  ageIntExplict = int.parse('34');

  double.parse('34.5');
  num.parse('90');

  bool.parse('true');

  10.toString(); // '10'
}


//num,double==> int  , use toInt() 34.5.toInt();//34

//string==> int, use int.parse()
//string==> bool, use bool.parse()
//string==> num, use num.parse()
//string==> double, use double.parse()

//any other datatype(num,int,double,bool)==>string , use  .toString() 
//eg;- 10.toString(), true.toString()