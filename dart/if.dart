void main() {
  num a = 30;
  num b = 20;

  String value = a < b ? 'Lesser' : 'Greater';

  //syntax
  // if(condition){

  // }

  //simple if
  if (a < b) {
    print('A is lesser: simple IF');
  }

  //if else
  String value2;
  if (a < b) {
    value2 = 'Greater';
  } else {
    value2 = 'Lesser';
  }
  print(value2);

  int age = 10;
  //if else if

  if (age >= 60) {
    print('Eligible for Discounted ticket');
  } else if (age < 5) {
    print('Eligible for Free ticket');
  } else if (age >= 5 && age < 12) {
    print('Eligible for Half ticket');
  } else {
    print('Full Ticket');
  }
}
