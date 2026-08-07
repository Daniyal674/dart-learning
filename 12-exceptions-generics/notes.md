# 12 - Exception Handling and Generics Basics

## Part 1: Exception Handling

### What is an exception?

An exception is an error that happens while your program is running —
like dividing by zero, parsing invalid input, or accessing something
that doesn't exist. Without handling it, the program crashes.

### try / catch

Wrap risky code in `try`. If it fails, `catch` runs instead of crashing.

```dart
void main() {
  try {
    int result = 10 ~/ 0; // throws an error
    print(result);
  } catch (e) {
    print('Something went wrong: $e');
  }
}
```

### Catching specific exception types

You can catch a specific type of error instead of catching everything
generically.

```dart
try {
  int number = int.parse('abc'); // not a valid number
} on FormatException catch (e) {
  print('Invalid format: $e');
}
```

`on FormatException` = only catch this specific type. `catch (e)` = grab
the error details into variable `e`.

### finally

Code inside `finally` always runs, whether an error happened or not.
Useful for cleanup (closing a file, resetting state).

```dart
try {
  print('Trying...');
  throw Exception('Something broke');
} catch (e) {
  print('Caught: $e');
} finally {
  print('This always runs');
}
```

### Throwing your own exceptions

You can trigger your own errors using `throw`.

```dart
void checkAge(int age) {
  if (age < 0) {
    throw ArgumentError('Age cannot be negative');
  }
  print('Age is valid: $age');
}
```

```dart
try {
  checkAge(-5);
} catch (e) {
  print('Error: $e');
}
```

### Custom exception classes

For bigger projects, you can define your own exception type.

```dart
class InvalidAgeException implements Exception {
  String message;
  InvalidAgeException(this.message);

  @override
  String toString() => 'InvalidAgeException: $message';
}
```

```dart
void checkAge(int age) {
  if (age < 0) {
    throw InvalidAgeException('Age cannot be negative');
  }
}
```

## Part 2: Generics Basics

### What is a generic?

A generic lets you write a class or function that works with **any
type**, decided later, instead of locking it to one specific type.
You've actually already used generics — `List<String>`, `Map<String,
int>` — the `<Type>` part is a generic.

### Why generics matter

Without generics, you'd need a separate class for `IntBox`, `StringBox`,
`BoolBox`, etc. Generics let you write it once.

### Generic function

```dart
T identity<T>(T value) {
  return value;
}
```

```dart
print(identity<int>(5));       // 5
print(identity<String>('hi')); // hi
```

`T` is a placeholder type — stands for "whatever type is passed in when
called." You can name it anything, but `T` is the common convention.

### Generic class

```dart
class Box<T> {
  T content;
  Box(this.content);

  void show() {
    print('Box contains: $content');
  }
}
```

```dart
Box<int> intBox = Box<int>(5);
intBox.show(); // Box contains: 5

Box<String> stringBox = Box<String>('Hello');
stringBox.show(); // Box contains: Hello
```

One class, works for any type — no need to write `IntBox`, `StringBox`
separately.

### Generics with constraints

You can restrict what types are allowed using `extends`.

```dart
class NumberBox<T extends num> {
  T value;
  NumberBox(this.value);
}
```

```dart
NumberBox<int> a = NumberBox<int>(5);       // ok, int is a num
NumberBox<double> b = NumberBox<double>(5.5); // ok, double is a num
// NumberBox<String> c = NumberBox<String>('hi'); // ERROR, String is not a num
```

## Full example

```dart
class InvalidAgeException implements Exception {
  String message;
  InvalidAgeException(this.message);

  @override
  String toString() => 'InvalidAgeException: $message';
}

void checkAge(int age) {
  if (age < 0) {
    throw InvalidAgeException('Age cannot be negative');
  }
  print('Age is valid: $age');
}

class Box<T> {
  T content;
  Box(this.content);

  void show() {
    print('Box contains: $content');
  }
}

void main() {
  try {
    checkAge(-5);
  } catch (e) {
    print('Caught error: $e');
  } finally {
    print('Age check finished');
  }

  Box<int> intBox = Box<int>(10);
  intBox.show();

  Box<String> stringBox = Box<String>('Dart');
  stringBox.show();
}
```

## Summary

- `try/catch` = run risky code, catch failure instead of crashing.
- `on TypeName catch (e)` = catch a specific error type.
- `finally` = always runs, regardless of success or failure.
- `throw` = trigger your own error.
- Custom exception classes = `implements Exception`, override `toString()`.
- Generics (`<T>`) = write one class/function that works with any type,
  decided when it's used.
- Generic constraints (`T extends num`) = restrict which types are allowed.

## Practice

Write a Dart program that:

1. Writes a function `divide(int a, int b)` that throws a custom
   exception `DivideByZeroException` if `b == 0`.
2. Calls it inside a `try/catch/finally`, printing the error message if
   caught, and `"Operation complete"` in `finally` either way.
3. Creates a generic class `Pair<T>` that holds two values of the same
   type (`first` and `second`), with a method `show()` that prints both.
4. Creates a `Pair<int>` and a `Pair<String>`, calling `show()` on each.

Run it with:

```bash
dart run filename.dart
```
