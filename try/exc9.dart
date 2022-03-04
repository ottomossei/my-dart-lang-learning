List<String> teammates = [
  "Iron-man",
  "Spider-man",
  "Hulk",
  "Captain America",
  "Doctor Strange"
];
main() {
  print(teammates);
  String getTeammate() {
    // List<String> originTeammate = [...teammates];
    teammates.shuffle();
    return teammates[0];
  }

  Map<String, int?> getPercentage(int i) {
    String selectedTeammate;
    Map<String, int?> output = {};
    int num = 0;
    while (num < i) {
      selectedTeammate = getTeammate();
      output[selectedTeammate] = (output[selectedTeammate] ?? 0) + 1;
      num++;
    }
    for (String name in output.keys) {
      double percent = output[name]! / i;
      output[name] = ((percent * 100).round()).toInt();
    }
    return output;
  }

  void showHistogram() {
    Map<String, int?> percentage = getPercentage(100);
    Map<String, String> output = {};
    for (String name in percentage.keys) {
      output[name] = "*" * percentage[name]!;
    }
    print(output.toString());
  }

  showHistogram();
  List<int> showTiming = [
    100,
    1000,
    10000,
    100000,
  ];
  print("a");
  int i = 101;
  if (showTiming.contains(i)) {
    print(i);
  }
}
