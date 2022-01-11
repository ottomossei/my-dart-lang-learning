- [Dart](#dart)
  - [directory](#directory)
  - [null](#null)
  - [if](#if)
  - [Map](#map)

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

## Map
```dart
Map<String, String> profile = {"first": "Go", "last": "Kubo"};
// forEach
profile.forEach((key, value) {
  print("${key} is ${value}");
});
```