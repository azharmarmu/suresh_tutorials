/*

1. Define 8 numbers (a,b,c,d,e,f,g,h) 
2. addition=> ab = (a,b) cd= (c,d) 
3. subraction=> ef = (e,f) gh=(g,h)
4. multiplication => abef = (ab * ef)
5. division => cdgh =(cd / gh)
6. modulos => result = (abef % cdgh)
7. print(result)

 */

void main() {
  //1. Define 8 numbers (a,b,c,d,e,f,g,h)
  int a = 10;
  int b = 20;
  int c = 30;
  int d = 40;
  int e = 50;
  int f = 60;
  int g = 70;
  int h = 80;

  //2. addition=> ab = (a,b) cd= (c,d)
  int ab = a + b; //30
  int cd = c + d; //70

  //3. subraction=> ef = (e,f) gh=(g,h)
  int ef = e - f; //-10
  int gh = g - h; //-10

  //4. multiplication => abef = (ab * ef)
  int abef = ab * ef; //-300

  //5. division => cdgh =(cd / gh)
  double cdgh = cd / gh; //-700

  //6. modulos => result = (abef % cdgh)
  double result = abef % cdgh;
  //Note: if you doubt put var=> var result =  abef % cdgh;

  //7. print(result)
  print(result);
}

//Note:- compiler will execute(run) from top to bottom and right to left

// int (-,+,*,/,%) double = double

// int + int = int
// int + double = double
// double + int = double
// double + double = double

// int - int = int
// int - double = double
// double - int = double
// double - double = double

// int / int = int
// int / double = double
// double / int = double
// double / double = double

// int * int = int
// int * double = double
// double * int = double
// double * double = double

// int % int = int
// int % double = double
// double % int = double
// double % double = double