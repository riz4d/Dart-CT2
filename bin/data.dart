void main() {
  sum();
  sumparams(52, 48);
  var sum1 = sumReturn(20, 40);
  print(sum1);
  sumReq(firstnumber: 100, lastnumber: 120, third: 200);
  sumFunction(25, 22, (int c, int d) async {
    await Future.delayed(Duration(seconds: 3)); //it's optional used for wait
    print('sum of function = ${c + d}');
  });
}

void sum() {
  print(2 + 3);
}

void sumparams(int a, int b) {
  print('${a + b}');
}

int sumReturn(int a, int b) {
  return a + b;
}

void sumReq(
    {required int firstnumber, required int lastnumber, required int third}) {
  print(firstnumber + lastnumber + third);
}

void sumFunction(int a, int b, void Function(int, int) customSum) {
  customSum(a, b);
}
