- [Error](#error)
- [late](#late)
- [?](#)



## Error
```dart
// ① : Define
String description;

// ② String description == Null
// Error
void main() {
  description = 'Feijoada!';
  print(description);
}
```


## late
```dart
// ① : Define (late)
late String description;

// ② String description == Null
// "late" will wait for the call.
void main() {
  // ③ "description" will be substituted.
  description = 'Feijoada!';
  print(description);
}
```

## ?
```dart
// ① : Define(?)
String? description;

// ② String description == Null
// "?" allow Null.
void main() {
  // ③ "description" will be substituted.
  description = 'Feijoada!';
  print(description);
}
```

