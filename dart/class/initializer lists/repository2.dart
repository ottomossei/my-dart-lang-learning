class Repository {
  String name;
  String type;
  // Need late
  late int stars;
  late int prs;
  late int issues;
  String? language;

  Repository(
      {required this.name,
      required this.type,
      required this.stars,
      required this.prs,
      required this.issues,
      this.language});

  // Repository.empty({required this.name_input, required this.type_input})
  //     : stars = 0,
  //       prs = 0,
  //       issues = 0;
  Repository.empty({required this.name, required this.type}) {
    stars = 0;
    prs = 0;
    issues = 0;
  }
  // Repository.empty({required String name_input, required String type_input}) {
  //   name = name_input;
  //   type = type_input;
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
