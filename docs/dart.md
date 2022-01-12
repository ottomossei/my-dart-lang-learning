- [Github](#github)
  - [PRs](#prs)
- [Dart](#dart)
  - [directory](#directory)
  - [package](#package)
  - [null](#null)
  - [if](#if)
  - [List](#list)
  - [Map](#map)
  - [math](#math)

# Github
## PRs
```
git checkout -b seki-branch
git add -A
git commit -m 'Submit by seki'
git push origin seki-branch 
```

# Dart

## directory
```
.
├── CHANGELOG.md
├── README.md
├── analysis_options.yaml
├── bin
│   └── two_fer.dart // main
├── lib
│   └── two_fer.dart // class
├── pubspec.lock
├── pubspec.yaml
└── test
    └── two_fer_test.dart // test
```
Optional is a class that wraps a value and expresses that the value may be null.

## package
package imports the dart file from lib.
```dart
// original package
// import 'package:PACAGE_NAME/DART_FILE' as vote_count_2;
import 'package:vote_count_2/vote_count_2.dart' as vote_count_2;

// original import
import '../say/hello.dart';

```


## null
Optional == Nullable

The type system of Dart is Optional.

Optional is a class that wraps a value and expresses that the value may be null.
```dart
// declare
int? number;
List<int?> numbers = [9, 10]
Map<String, String?> greetingsByRole = {
  'CLIENT': 'hello',
  'DEFAULT': 'hello',
};
```
```dart
// ?
String myfunc([String? x]) {
  if (x == null) {
    return "x is null";
  } else {
    return "x is String";
  }
}
```

```dart
// ??
String? greeting = greetingsByRole[person] ?? greetingsByRole["DEFAULT"];

int currentValue = output[name] ?? 0;
```

```dart
// !
String? myString;
if (myString != null) {
   print(myString); //myString still an optional
   print(myString!); //myString is now a String! (because of the force unwrap)
}
```

## if
```dart
if (number == null) {
  print("if");
} else if (number < 10) {
  rint("else if");
} else {
  print("else");
}
```

## List
```dart
List<int> nums = [1,2,3,4];

// 1
print(nums[0])
print(nums.first)

// 4
print(nums.last)

// 2,3
// (included, not included)
// Output another list
print(nums.sublist(1,3));

// randomize index
// Change original list
print(nums.shuffle())

```

## Map
```dart
Map<String, String> profile = {"first": "Go", "last": "Kubo"};
// forEach
profile.forEach((key, value) {
  print("${key} is ${value}");
});
```

## math
```dart
import 'dart:math';

// int random in 0~19
print(Random().nextInt(20));

// double random in 0~1
print(Random().nextDouble());

// bool random
print(Random().nextBool());
```