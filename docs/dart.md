- [Github](#github)
  - [PRs](#prs)
- [Dart](#dart)
  - [directory](#directory)
  - [package](#package)
  - [null](#null)
  - [arrow function](#arrow-function)
  - [Callback(Anonymous) function](#callbackanonymous-function)
  - [if](#if)
  - [for](#for)
  - [forEach(List)](#foreachlist)
  - [List](#list)
  - [Map](#map)
  - [Map ⇄ List](#map--list)
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

## arrow function
```dart
// void
void change(int i) {
  i = 2;
}

void change(int i) => i = 2;

// print
void change() {
  print("a");
}

void change() => print("a");
```

```dart
// return
int change() {
  return 2;
}

int change() => 2;
```

## Callback(Anonymous) function
Callback functions are used only once.
```dart
void myFunc(void Function(String) twoPrint) {
  List<String> list = ['A', 'B', 'C'];
  for (String item in list) {
    twoPrint(item);
  }
}

void main() {
  // Callback
  myFunc((String s) {
    print(s);
    print(s);
  });
}
```
Callback functions are functions, so variables are not stored.
```dart
void myFunc(void Function(String) myPrint) {
  List<String> list = ['A', 'B', 'C'];
  for (String item in list) {
    myPrint(item);
  }
}

void main() {
  myFunc((String s) {
    String local_s = s;
    // A B C
    print(local_s);
  });

  // Error
  // Undefined name 's'.
  print(s);
  // Error
  // Undefined name 'local_s'.
  print(local_s)
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

## for
```dart
// basic
for (var i = 0; i < 10; i++) {
  print(i);
}

// for-in
List<String> mixFruit = ['apple', 'banana', 'grape', 'orange'];
for (String fruit in mixFruit) {
  print(fruit);
}
```

## forEach(List)
```dart
// List
List<String> mixFruit = ['apple', 'banana', 'grape', 'orange'];

mixFruit.forEach((fruit){
    print(fruit);
);

// same output (Arrow function)
mixFruit.forEach((fruit) => print(fruit));
```


## List
```dart
List<int> nums = [1,2,3,4];
List<int> nums = [for (var i = 1; i <= 4; i += 1) i];

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

// sort
// 1 2 3 4 
print(nums.sort())

// copy
List<int> copy_nums = [...nums];
```

## Map
```dart
Map<String, String> profile = {"first": "Go", "last": "Kubo"};
// forEach
profile.forEach((key, value) {
  print("${key} is ${value}");
});
```

## Map ⇄ List
```dart
// Map → list
keys = countedVotes.keys.toList();
values = countedVotes.keys.toList();
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