- [Error](#error)
- [late](#late)
- [?](#)

lateはそのスコープ内で宣言できない場合に用いる。  
ある意味null回避。

## Error
```dart
// ① : Define
String description;

// ② : String description == Null
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

// ② : String description == Null
// "late" will wait for the call.
void main() {
  // ③ : "description" will be substituted.
  description = 'Feijoada!';
  print(description);
}
```

## ?
```dart
// ① : Define(?)
String? description;

// ② : String description == Null
// "?" allow Null.
void main() {
  // ③ : "description" will be substituted.
  description = 'Feijoada!';
  print(description);
}
```

