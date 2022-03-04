void change(String local_origin) => local_origin = "2";

main() {
  String local_origin = "1";
  // 1
  print("origin : $local_origin");
  change(local_origin);
  // 1
  print("origin : $local_origin");
}
