void main() {
//   helloWorld(null);
//   greeting(null);
//   callname();
  callprofile();
}

// 変数宣言
void helloWorld(String? name) {
  // nameはStringかnullでなければエラー
  print("hello, ${name ?? "someone"}");
}

void greeting(bool? isMorning) {
  if (isMorning ?? false) {
    print("good morning");
  } else {
    print("Hello");
  }
}

void callname() {
  List<String> names = ["Go", "Taguchi", "Risa"];
  for (var name in names) {
    //varでなくStringでも動く
    print(name);
  }
}

void callprofile() {
  Map<String, String> profile = {"first": "Go", "last": "Kubo"};
  print(profile.keys);
  print(profile.values);
  print(profile["first"]);
  profile.forEach((key, value) {
    print("${key} is ${value}");
  });
  print(profile.toString());
}
