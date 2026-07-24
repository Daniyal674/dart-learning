# 06 - Control Flow (if/else, loops)

## What is control flow?

Control flow decides which parts of your code run, and how many times.
Instead of code always running top to bottom in one straight line, you
can make decisions and repeat actions.

## if / else

Runs code only when a condition is true.

```dart
int age = 20;

if (age >= 18) {
  print('You are an adult.');
} else {
  print('You are a minor.');
}
```

You can chain multiple conditions with `else if`:

```dart
int score = 75;

if (score >= 90) {
  print('Grade: A');
} else if (score >= 70) {
  print('Grade: B');
} else {
  print('Grade: C');
}
```

## switch

Useful when checking one variable against many fixed values.

```dart
String day = 'Monday';

switch (day) {
  case 'Monday':
    print('Start of the week');
    break;
  case 'Friday':
    print('Almost weekend');
    break;
  default:
    print('Just another day');
}
```

## Loops

Loops repeat a block of code multiple times.

### `for` loop

Use when you know how many times to repeat.

```dart
for (int i = 1; i <= 5; i++) {
  print('Count: $i');
}
```

- `int i = 1` → starting point
- `i <= 5` → condition, loop keeps going while true
- `i++` → runs after each loop, increases `i` by 1

### `while` loop

Use when you don't know exactly how many times, but you have a condition.

```dart
int count = 0;

while (count < 3) {
  print('Count is $count');
  count++;
}
```

### `do-while` loop

Same as `while`, but always runs at least once, even if the condition is
false from the start.

```dart
int count = 0;

do {
  print('Count is $count');
  count++;
} while (count < 3);
```

## Full example

```dart
void main() {
  // if / else example
  int age = 20;

  if (age >= 18) {
    print('You are an adult.');
  } else {
    print('You are a minor.');
  }

  // if / else if / else example
  int score = 75;

  if (score >= 90) {
    print('Grade: A');
  } else if (score >= 70) {
    print('Grade: B');
  } else {
    print('Grade: C');
  }

  // switch example
  String day = 'Monday';

  switch (day) {
    case 'Monday':
      print('Start of the week');
      break;
    case 'Friday':
      print('Almost weekend');
      break;
    default:
      print('Just another day');
  }

  // for loop example
  for (int i = 1; i <= 5; i++) {
    print('Count: $i');
  }

  // while loop example
  int count = 0;
  while (count < 3) {
    print('Count is $count');
    count++;
  }

  // do-while loop example
  int count2 = 0;
  do {
    print('Count is $count2');
    count2++;
  } while (count2 < 3);
}
```

## Summary

- `if / else if / else` = run code based on a condition.
- `switch` = check one variable against multiple fixed values.
- `for` = repeat a known number of times.
- `while` = repeat while a condition is true.
- `do-while` = same as `while`, but runs at least once.

## Practice

Write a Dart program that:

1. Asks the user to type a number (using `stdin.readLineSync()`).
2. Checks if the number is positive, negative, or zero, and prints which.
3. Uses a `for` loop to print all numbers from 1 up to that number.

Run it with:

```bash
dart run filename.dart
```
