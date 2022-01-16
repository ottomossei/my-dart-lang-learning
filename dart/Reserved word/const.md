- [Error](#error)
- [const](#const)
- [const (different from "final")](#const-different-from-final)


## Error
```dart
// Error
// Crash when compiling null,
const String name;
```
```dart
// ① : Define (const)
final String name = 'Bob';

// ② : Error
// 'name' is already declared in this scope.
name = "Alice";

void main() {
  // ③ : Can't use 'name' because it is declared more than once.
  print(name);
}
```

## const
```dart
// ① : Define (final)
const String name = 'Bob';

void main() {
  // ② : Bob
  print(name);
}
```


## const (different from "final")
If you declare a constant with "const", you cannot assign another variable to it.
That memory area is not rewritable.
```dart
// ① : Define (const)
const String name = 'Bob';

// ② : Define
String alice = "Alice";

// Error
// ③ : The invocation of 'alice' is not allowed in a constant expression.
const String name_const = alice;

void main() {
  // ④ : Error
  print(name_const);
}
```

