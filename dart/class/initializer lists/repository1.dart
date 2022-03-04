class Repository {
  String name;
  String type;
  // Dont need late
  int stars;
  int prs;
  int issues;
  String? language;

  Repository(
      {required this.name,
      required this.type,
      required this.stars,
      required this.prs,
      required this.issues,
      this.language});

  Repository.empty({required this.name, required this.type})
      // イニシャライザリスト
      : stars = 0,
        prs = 0,
        issues = 0;
  // Repository.empty({required this.name, required this.type}) {
  //   stars = 0;
  //   prs = 0;
  //   issues = 0;
  // }
  // Repository.empty({required String name, required String type}) {
  //   name = name;
  //   type = type;
  //   stars = 0;
  //   prs = 0;
  //   issues = 0;
  // }
}

main() {
  Repository repository = Repository.empty(
    name: 'mac1',
    type: 'private',
  );
  print(repository.name);
  print(repository.type);
}
