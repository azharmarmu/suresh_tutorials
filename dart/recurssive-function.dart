void main() {
  int result1 = sum(4, 3);

  print(result1);
}

//recurssive function
int sum(int a, int b) {
  if (a > 0 && b > 0) {
    return a + b + sum(a - 1, b - 1);
  }
  return 0;
}
