void main() {
  //1-100 print even numbers 2,4,6...100

  int i = 2;

  //method1
//   while (i <= 100) {
//     if (i % 2 == 0) {
//       print(i);
//     }
//     i++;
//   }

  //method2
  while (i <= 100) {
    print(i);
    i += 2; // i = i+1, i++, ++i, i+=1
    // i = i-1, i--, --i, i-=1
    // i = i +100; //i+=100
  }
}

// 98/2 == 0
