# 08 - Null Safety

## What is null safety?

Null = "no value". Null safety means Dart forces you to decide upfront
whether a variable is allowed to be null or not. This catches a huge
class of bugs before your program even runs (this is what caused the
error in your control-flow exercise earlier).

## Non-nullable by default

In Dart, variables can NOT hold null unless you say so.

```dart
String name = 'Alex'; // fine
String name2 = null;  // ERROR — not allowed
```

## Making a variable nullable: `?`

Add `?` after the type to allow null.

```dart
String? name = null; // allowed
```

You saw this already:

```dart
String? name = stdin.readLineSync(); // could be null if user types nothing
```

## The `!` operator (null assertion)

Tells Dart "I promise this is not null, trust me." Use only when you're
sure — if you're wrong, program crashes.

```dart
String? name = stdin.readLineSync();
print(name!.toUpperCase()); // forces Dart to treat name as non-null
```

This is what fixed your control-flow bug:

```dart
int number = int.parse(stdin.readLineSync()!);
```

## The `??` operator (if null, use this instead)

Gives a default/fallback value when something is null.

```dart
String? name;
print(name ?? 'Guest'); // prints: Guest, since name is null
```

## The `??=` operator (assign only if null)

Assigns a value only if the variable is currently null.

```dart
String? name;
name ??= 'Guest';
print(name); // prints: Guest
```

## `late` keyword

Tells Dart "this variable will get a value before it's used, just not
right now." Useful when you can't assign immediately but know it won't
stay null.

```dart
late String description;

void setup() {
  description = 'Loaded later';
}
```

If you use a `late` variable before it's assigned, program crashes.

## Why this matters

Without null safety, accessing a null value crashes the program at
runtime, often deep inside an app, hard to trace. Dart catches these
mistakes at compile time instead, before the program even runs.

## Full example

```dart
void main() {
  String? name;
  print(name ?? 'Guest'); // Guest

  name ??= 'Alex';
  print(name); // Alex

  String? city = 'Lahore';
  print(city!.toUpperCase()); // LAHORE

  late String greeting;
  greeting = 'Hello!';
  print(greeting);
}
```

## Summary

- Variables are non-nullable by default in Dart.
- `?` after a type → allows null.
- `!` → asserts "not null," crashes if wrong.
- `??` → fallback value if null.
- `??=` → assign only if currently null.
- `late` → value comes later, but promise it won't stay null.

## Practice

Write a Dart program that:

1. Declares a nullable `String? favoriteColor` set to `null`.
2. Prints it using `??` with a fallback like `'Not specified'`.
3. Uses `??=` to then assign it a real value.
4. Prints it again, this time using `!` to confirm it's not null.

Run it with:

```bash
dart run filename.dart
```
