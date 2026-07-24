# 05 - Operators

## What is an operator?

An operator is a symbol that performs an action on values — like adding
numbers, comparing them, or combining conditions.

## Arithmetic operators

Used for math.

| Operator | Meaning | Example | Result |
| --- | --- | --- | --- |
| `+` | Add | `5 + 3` | `8` |
| `-` | Subtract | `5 - 3` | `2` |
| `*` | Multiply | `5 * 3` | `15` |
| `/` | Divide | `5 / 2` | `2.5` |
| `~/` | Divide, drop decimal | `5 ~/ 2` | `2` |
| `%` | Remainder (modulo) | `5 % 2` | `1` |

```dart
int total = 10 + 5; // 15
```

## Comparison operators

Compare two values, result is always `true` or `false`.

| Operator | Meaning | Example | Result |
| --- | --- | --- | --- |
| `==` | Equal to | `5 == 5` | `true` |
| `!=` | Not equal to | `5 != 3` | `true` |
| `>` | Greater than | `5 > 3` | `true` |
| `<` | Less than | `5 < 3` | `false` |
| `>=` | Greater or equal | `5 >= 5` | `true` |
| `<=` | Less or equal | `5 <= 3` | `false` |

## Logical operators

Combine or flip true/false conditions.

| Operator | Meaning | Example |
| --- | --- | --- |
| `&&` | AND — both must be true | `age > 18 && hasID` |
| `\|\|` | OR — either can be true | `isWeekend \|\| isHoliday` |
| `!` | NOT — flips true/false | `!isStudent` |

## Assignment operators

Used to give or update a variable's value.

| Operator | Meaning | Example |
| --- | --- | --- |
| `=` | Assign value | `int x = 5;` |
| `+=` | Add and assign | `x += 3;` (same as `x = x + 3`) |
| `-=` | Subtract and assign | `x -= 3;` |
| `*=` | Multiply and assign | `x *= 3;` |
| `/=` | Divide and assign | `x /= 3;` |

## Example

```dart
void main() {
  int a = 10;
  int b = 3;

  print('Sum: ${a + b}');
  print('Difference: ${a - b}');
  print('Is equal: ${a == b}');
  print('Is greater: ${a > b}');

  bool isAdult = true;
  bool hasID = false;
  print('Can enter: ${isAdult && hasID}');

  int score = 5;
  score += 10;
  print('Updated score: $score');
}
```

## Summary

- Arithmetic operators do math (`+ - * / ~/ %`).
- Comparison operators compare values, return `true`/`false`.
- Logical operators combine conditions (`&& || !`).
- Assignment operators set or update values (`= += -= *= /=`).

## Practice

Write a Dart program that:

1. Declares two `int` variables of your choice.
2. Prints the result of adding, subtracting, multiplying, and dividing them.
3. Prints whether the first number is greater than the second (using a comparison operator).
4. Uses `+=` to increase one of the numbers by 5, then prints the new value.

Run it with:

```bash
dart run filename.dart
```
