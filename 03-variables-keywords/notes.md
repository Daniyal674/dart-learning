# 03 - Variables and Keywords

## What is a variable?

A variable is a named container that holds a value. Instead of typing
the same value over and over, you store it once under a name and reuse it.

```dart
String name = 'Alex';
print(name); // prints Alex
```

Here `name` is the variable. `String` tells Dart what type of value it
holds. `'Alex'` is the value stored inside.

## Keywords for declaring variables

Dart gives you a few ways to declare a variable. Each one behaves a
little differently.

### `var`

Lets Dart figure out the type automatically, based on the value you give it.

```dart
var age = 25; // Dart knows this is an int
```

Once set, the type is locked in — you can't later put a String into a
variable that started as `var age = 25`.

### `final`

Value can be set once, and never changed after that. Use this when a
value shouldn't change during the program.

```dart
final city = 'Lahore';
// city = 'Karachi'; // this would cause an error
```

### `const`

Similar to `final`, but the value must be known at compile time (before
the program even runs). Used for values that are always fixed, like
mathematical constants.

```dart
const pi = 3.14159;
```

### `dynamic`

Type can change later. Rarely used by beginners — mentioned here so you
recognize it, not to use often.

```dart
dynamic value = 'hello';
value = 42; // allowed, type changed
```

## Which one should you use?

- Use `final` when the value won't change (most common, safest choice).
- Use `var` when you need to reassign the value later.
- Use `const` for values fixed at compile time (rare for beginners).
- Avoid `dynamic` until you understand types better.

## Naming rules for variables

- Must start with a letter or underscore, not a number.
- Case-sensitive (`age` and `Age` are different).
- Use `camelCase` by convention (e.g. `firstName`, not `first_name`).
- Can't use reserved keywords as names (like `class`, `if`, `for`).

## Example

```dart
void main() {
  var age = 25;
  final city = 'Lahore';
  const pi = 3.14159;

  print('Age: $age');
  print('City: $city');
  print('Pi: $pi');
}
```

## Summary

- Variable = named storage for a value.
- `var` = type inferred, can reassign.
- `final` = set once, can't change.
- `const` = fixed at compile time.
- `dynamic` = type can change (use sparingly).

## Practice

Write a Dart program that:

1. Declares your name using `final`.
2. Declares your age using `var`.
3. Declares a constant for your favorite number using `const`.
4. Prints all three in one sentence, like:
   `"My name is [name], I am [age] years old, and my favorite number is [number]."`

Run it with:

```bash
dart run filename.dart
```
