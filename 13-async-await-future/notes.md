# 13 - Asynchronous Dart: async, await, Future

## What is asynchronous code?

Normal code runs line by line, each line waiting for the previous one to
finish — this is called **synchronous**. But some tasks take time:
reading a file, calling an API, waiting for a timer. If Dart waited
around doing nothing during that time, your whole app would freeze.

**Asynchronous** code lets Dart start a slow task, move on to other work,
and come back to it once it's done — without freezing everything else.

## Future

A `Future` represents a value that isn't ready yet, but will be at some
point. Think of it as a promise: "I don't have your value right now, but
I'll give it to you later."

```dart
Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => 'Data loaded');
}
```

This function doesn't return a `String` directly — it returns a
`Future<String>`, a promise of a String, arriving after 2 seconds.

## async and await

`async` marks a function as asynchronous. `await` pauses execution
*inside that function* until a `Future` completes, without freezing the
rest of the program.

```dart
Future<void> main() async {
  print('Fetching...');
  String result = await fetchData(); // waits here for the Future to finish
  print(result); // Data loaded
  print('Done');
}

Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => 'Data loaded');
}
```

Output order:
Fetching...
(2 second pause)
Data loaded
Done

## Without await — showing why it matters

```dart
void main() {
  print('Fetching...');
  fetchData().then((result) => print(result)); // doesn't wait
  print('Done'); // this runs BEFORE fetchData finishes
}
```

Output order:
Fetching...
Done
(2 second pause)
Data loaded

Without `await`, Dart doesn't pause — it keeps running the next line
immediately, and the `Future`'s result shows up whenever it's ready,
possibly after other code already ran.

## .then() — alternative to await

`.then()` runs code once a `Future` completes, without needing `async`/
`await`. Useful, but `await` is usually more readable for sequential
steps.

```dart
fetchData().then((result) {
  print(result);
});
```

## Handling errors in async code

Use `try/catch` around `await`, same pattern as regular exceptions.

```dart
Future<void> main() async {
  try {
    String result = await fetchData();
    print(result);
  } catch (e) {
    print('Error: $e');
  }
}
```

## Multiple async operations

### Sequential (one after another)

```dart
Future<void> main() async {
  String a = await fetchData(); // waits for this first
  String b = await fetchData(); // then waits for this
  print('$a, $b');
}
```

### Parallel (both at once, wait for all)

```dart
Future<void> main() async {
  List<String> results = await Future.wait([
    fetchData(),
    fetchData(),
  ]);
  print(results); // both finished, results as a List
}
```

`Future.wait()` runs multiple Futures at the same time instead of one
after another — much faster when tasks don't depend on each other.

## Why this matters for Flutter and backend

- **Flutter** — every network call, every file read, every database
  query is async. Loading data into a screen without freezing the UI
  depends entirely on this pattern.
- **Backend** — handling requests, querying databases, calling other
  APIs — all async, since a server needs to handle multiple requests
  without blocking.

## Full example

```dart
Future<String> fetchUserName() {
  return Future.delayed(Duration(seconds: 1), () => 'Alex');
}

Future<int> fetchUserAge() {
  return Future.delayed(Duration(seconds: 1), () => 25);
}

Future<void> main() async {
  print('Loading user...');

  try {
    String name = await fetchUserName();
    int age = await fetchUserAge();
    print('User: $name, Age: $age');
  } catch (e) {
    print('Error: $e');
  }

  print('Done loading.');
}
```

## Summary

- `Future` = a value that isn't ready yet, but will be.
- `async` = marks a function as asynchronous.
- `await` = pauses inside an async function until a Future completes,
  without freezing the whole program.
- `.then()` = alternative way to handle a Future's result.
- `try/catch` works around `await`, same as normal exceptions.
- `Future.wait([...])` = run multiple async tasks in parallel.
- Core to both Flutter (UI stays responsive) and backend (handling
  multiple requests).

## Practice

Write a Dart program that:

1. Writes a function `fetchTemperature()` that returns a `Future<double>`,
   using `Future.delayed` with a 2-second delay, returning a fake
   temperature value.
2. Writes a function `fetchHumidity()` that returns a `Future<int>`,
   similarly delayed, returning a fake humidity value.
3. In `main()` (marked `async`), use `await` to get both values in
   sequence, and print them.
4. Wrap it in `try/catch` to handle any errors.
5. Bonus: rewrite it using `Future.wait()` so both run in parallel
   instead of sequentially, and print how much faster it feels (add a
   print statement before and after to compare).

Run it with:

```bash
dart run filename.dart
```
