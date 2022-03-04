void change(int localInt) => localInt = 2;

main() {
  int localInt = 1;
  // 1
  print("origin : $localInt");
  change(localInt);
  // 1
  print("origin : $localInt");
}
