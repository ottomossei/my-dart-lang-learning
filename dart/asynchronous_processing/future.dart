/*
Futureで値を返す.
*/

Future<void> waitOrder() {
  print("wait 2 seconds");
  return Future.delayed(const Duration(seconds: 2), () {
    print("finish");
  });
}

void test01() {
  waitOrder();
}

void main(List<String> args) {
  test01();
}
