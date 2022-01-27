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

Future<String> fstring() {
  // 2秒遅れてStringを返す
  return Future.delayed(const Duration(seconds: 2), () => "2sec");
}

void test02() {
  // Instance of 'Future<String>'
  Future<String> value = fstring();
  print(value);
}

Future<void> test03() async {
  // 2秒待って表示
  String value = await fstring();
  print(value);
}

void main(List<String> args) {
  // test01();
  // test02();
  test03();
}
