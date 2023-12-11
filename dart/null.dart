void main(List<String> args) {
  String name = 'Alex Bob';
  String? name2 = getName();

  int r = name2!.length + 4;

  print(r);
}

String? getName() {
  return null;
}
