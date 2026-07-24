# 04 - Data Types

## What is a data type?

A data type tells Dart what kind of value a variable holds — a number,
text, true/false, or a collection of values. Dart uses this to know how
to store and work with the value.

## Common data types

### `int`

Whole numbers, no decimals.

```dart
int age = 25;
```

### `double`

Numbers with decimal points.

```dart
double price = 19.99;
```

### `String`

Text, wrapped in single or double quotes.

```dart
String name = 'Alex';
```

### `bool`

True or false only. Used for conditions and decisions.

```dart
bool isStudent = true;
```

### `List`

An ordered collection of values (like an array in other languages).

```dart
List<String> fruits = ['apple', 'banana', 'mango'];
```

### `Map`

A collection of key-value pairs. Like a dictionary — look up a value using
its key.

```dart
Map<String, int> ages = {
  'Alex': 25,
  'Sara': 30,
};
```

## Checking a variable's type

You can ask Dart what type something is using `.runtimeType`.

```dart
print(age.runtimeType); // prints: int
```

## Example

```dart
void main() {
  int age = 25;
  double price = 19.99;
  String name = 'Alex';
  bool isStudent = true;
  List<String> fruits = ['apple', 'banana', 'mango'];
  Map<String, int> ages = {'Alex': 25, 'Sara': 30};

  print('Name: $name, Age: $age, Student: $isStudent');
  print('Price: \$${price}');
  print('Fruits: $fruits');
  print('Ages map: $ages');
}
```

## Summary

- `int` = whole numbers.
- `double` = decimal numbers.
- `String` = text.
- `bool` = true/false.
- `List` = ordered list of values.
- `Map` = key-value pairs.

## Practice

Write a Dart program that:

1. Declares an `int` for your age.
2. Declares a `double` for your height (in meters or feet).
3. Declares a `bool` for whether you like coffee.
4. Declares a `List<String>` of three of your hobbies.
5. Prints all of them in a readable sentence or set of lines.

Run it with:

```bash
dart run filename.dart
```
