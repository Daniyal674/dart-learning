# 02 - Input and Output (I/O) Basics

## What is I/O?

I/O stands for Input/Output. It's how your program talks to the outside
world:

- **Output** — your program shows something (text, results) to the user.
- **Input** — your program receives something (text typed by the user).

## Output in Dart

Dart uses the `print()` function to show text on the screen (console).

```dart
print('Hello, world!');
```

`print()` is built into Dart, so you don't need to import anything to use it.

## Input in Dart

To read what a user types, Dart uses `stdin.readLineSync()`.

Unlike `print()`, this is **not** built in by default — it lives in a
library called `dart:io`. You must import it at the top of your file:

```dart
import 'dart:io';
```

Example:

```dart
import 'dart:io';

void main() {
  print('What is your name?');
  String? name = stdin.readLineSync();
  print('Hello, $name!');
}
```

### Why the `?` after `String`

`stdin.readLineSync()` returns a value that *might* be empty (if the user
presses enter without typing anything). Dart marks this with `?` to say
"this could be null (empty)". You'll learn more about null safety later —
for now, just know `String?` means "a string, or possibly nothing."

## Where things live

| Feature | Needs import? | Library |
| --- | --- | --- |
| `print()` | No | Built-in (dart:core, always available) |
| `stdin.readLineSync()` | Yes | `dart:io` |

## Summary

- Use `print()` to show output. No import needed.
- Use `stdin.readLineSync()` to get input. Needs `import 'dart:io';`.
- Input comes back as text (`String?`), even if the user types a number —
  you'll learn how to convert that later.

## Practice

Write a Dart program that:

1. Asks the user to type their favorite food.
2. Asks the user to type their city.
3. Prints a sentence combining both, like:
   `"Someone from [city] who loves [food] — great combo!"`

Run it with:

```bash
dart run filename.dart
```
