- [Error](#error)
- [const](#const)
- [const (different from "final")](#const-different-from-final)


## normal func
```dart
int func(int a, int b) {
  return a + b;
}

main() {
  int a = 1;
  int b = 2;
  // 3
  print(func(a, b));
}
```

## Error
```dart
// Error
// The parameter 'a' can't have a value of 'null' because of its type 'int', but the implicit default value is 'null'.
// Try adding either an explicit non-'null' default value or the 'required' modifier.
int func({int a, int b}) {
  return a + b;
}

main() {
  int a = 1;
  int b = 2;
  print(func(a: a, b: b));
}
```

## required
```dart
int func({required int a, required int b}) {
  return a + b;
}

main() {
  int a = 1;
  int b = 2;
  print(func(a: a, b: b));
}
```

## Use "!" and "?"
```dart
int func({int? a, int? b}) {
  return a! + b!;
}

main() {
  int a = 1;
  int b = 2;
  print(func(a: a, b: b));
}
```
