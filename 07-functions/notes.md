# 07 - Functions

## What is a function?

A function is a named block of code that performs a task. Instead of
repeating the same code, you write it once as a function and call it
whenever needed.

## Why use functions?

- Avoid repeating code (write once, use many times).
- Break big problems into small, manageable pieces.
- Easier to read, test, and fix.

## Syntax

```dart
returnType functionName(parameterType parameterName) {
  // code
  return value; // only if returnType is not void
}
```

- `returnType` = what type of value the function gives back (`int`, `String`, `bool`, `void` if nothing).
- `functionName` = name you call it by.
- `parameters` = inputs the function needs, in parentheses.
- `return` = sends a value back to whoever called the function.

## Function with no return value

```dart
void greet(String name) {
  print('Hello, $name!');
}
```

Call it like this:

```dart
greet('Alex'); // prints: Hello, Alex!
```

## Function that returns a value

```dart
int add(int a, int b) {
  return a + b;
}
```

```dart
int result = add(5, 3);
print(result); // prints: 8
```

## Named parameters

Useful when a function has many parameters — call by name, order doesn't matter. Wrap in `{}`.

```dart
void showProfile({required String name, required int age}) {
  print('Name: $name, Age: $age');
}
```

```dart
showProfile(name: 'Sara', age: 30);
```

## Optional parameters

Add `?` or a default value if a parameter isn't always required.

```dart
void greetUser({String name = 'Guest'}) {
  print('Welcome, $name!');
}
```

```dart
greetUser(); // Welcome, Guest!
greetUser(name: 'Alex'); // Welcome, Alex!
```

## Arrow functions

Shortcut for functions with just one line/expression.

```dart
int square(int x) => x * x;
```

Same as:

```dart
int square(int x) {
  return x * x;
}
```

## String interpolation recap

Functions often build and return strings. Quick reminder:

- `$variable` → insert variable value directly.
- `${expression}` → insert result of an expression.

```dart
String describe(String name, int age) {
  return 'Name: $name, Age: ${age + 1} (next year)';
}
```

## Full example

```dart
void main() {
  greet('Alex');

  int sum = add(5, 3);
  print('Sum: $sum');

  showProfile(name: 'Sara', age: 30);

  greetUser();
  greetUser(name: 'Alex');

  print(square(4));

  print(describe('Alex', 25));
}

void greet(String name) {
  print('Hello, $name!');
}

int add(int a, int b) {
  return a + b;
}

void showProfile({required String name, required int age}) {
  print('Name: $name, Age: $age');
}

void greetUser({String name = 'Guest'}) {
  print('Welcome, $name!');
}

int square(int x) => x * x;

String describe(String name, int age) {
  return 'Name: $name, Age: ${age + 1} (next year)';
}
```

## Summary

- Function = reusable named block of code.
- Syntax: `returnType functionName(params) { ... return value; }`
- `void` = function returns nothing.
- Named parameters = `{required Type name}`, called by name.
- Optional parameters = default value, don't need to pass every time.
- Arrow functions (`=>`) = shortcut for single-expression functions.
- String interpolation (`$var`, `${expr}`) works great inside functions returning strings.

## Practice

Write a Dart program that:

1. Writes a function `calculateArea(double width, double height)` that returns the area of a rectangle.
2. Writes a function `greetTime({required String name, required String timeOfDay})` using named parameters, that prints something like: `"Good morning, Alex!"`
3. Writes an arrow function `isEven(int number)` that returns `true` or `false`.
4. Calls all three functions from `main()` and prints their results.

Run it with:

```bash
dart run filename.dart
```
