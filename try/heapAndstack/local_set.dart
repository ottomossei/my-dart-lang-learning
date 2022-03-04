void change(Set<int> localSet) => localSet = {2};

main() {
  Set<int> localSet = {1};
  // 1
  print("local : ${localSet.toString()}");
  change(localSet);
  // 1
  print("local : ${localSet.toString()}");
}
