- [Error](#error)
- [late](#late)
- [?](#)



## Error
```dart
// 1 : Define
String description;

// 2 String description == Null
// Error
void main() {
  description = 'Feijoada!';
  print(description);
}
```


## late
```dart
// 1 : Define (late)
late String description;

// 2 String description == Null
// "late" will wait for the call.
void main() {
  // 3 "description" will be substituted.
  description = 'Feijoada!';
  print(description);
}
```

## ?
```dart
// 1 : Define(?)
String? description;

// 2 String description == Null
// ? allow Null.
void main() {
  // 3 "description" will be substituted.
  description = 'Feijoada!';
  print(description);
}
```

