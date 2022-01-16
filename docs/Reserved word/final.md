- [Error](#error)
- [final](#final)
- [final (different from "const")](#final-different-from-const)



## Error
```dart
// Error
// The final variable 'name' must be initialized.
// Try adding an initializer ('= expression') to the declaration.
final String name;
```
```dart
// ① : Define (final)
final String name = 'Bob';

// ② : Error
// 'name' is already declared in this scope.
name = "Alice";

void main() {
  // ③ : Can't use 'name' because it is declared more than once.
  print(name);
}
```

## final
```dart
// ① : Define (final)
final String name = 'Bob';

void main() {
  // ② : Bob
  print(name);
}
```


## final (different from "const")
If you declare a constant with "final", you can assign the value of another variable.
```dart
// ① : Define (final)
final String name = 'Bob';

// ② : Define
String alice = "Alice";

// ③ : Define (final)
final String name_final = alice;

void main() {
  // ④ : Alice (NOT error)
  print(name_final);
}
```

