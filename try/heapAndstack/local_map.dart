void change(Map<String, int> localMap) => localMap["a"] = 2;

main() {
  Map<String, int> localMap = {"a": 1};
  // 1
  print("local : ${localMap.toString()}");
  change(localMap);
  // 2
  print("local : ${localMap.toString()}");
}
