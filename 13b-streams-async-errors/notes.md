# 13b - Streams and Async Error Handling

## What is a Stream?

A `Future` gives you **one** value, once, in the future. A `Stream`
gives you **multiple** values, over time, as they become available.
Think of `Future` as a single delivery, `Stream` as a subscription —
values keep arriving.

Examples of real Streams: keystrokes as a user types, live sensor
readings, chunks of a downloading file, incoming chat messages.

## Creating a simple Stream

```dart
Stream<int> countStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i; // sends this value out through the stream
  }
}
```

- `async*` = marks this as a Stream-generating function (note the `*`,
  different from plain `async`).
- `yield` = sends a value out through the stream, one at a time, instead
  of `return`ing just once.

## Listening to a Stream

### Using `await for` (inside an async function)

```dart
Future<void> main() async {
  await for (int value in countStream()) {
    print('Received: $value');
  }
  print('Stream finished.');
}
```

Pauses at each `yield`, processes the value, then waits for the next
one — very similar to a `for` loop, but spread out over time.

### Using `.listen()`

```dart
void main() {
  countStream().listen((value) {
    print('Received: $value');
  }, onDone: () {
    print('Stream finished.');
  });
}
```

`.listen()` doesn't block — code after it keeps running immediately,
while the stream delivers values in the background via the callback.

## Stream methods (similar to List methods)

Streams support many of the same operations as collections:

```dart
countStream()
    .where((value) => value % 2 == 0) // only even numbers
    .listen((value) => print('Even: $value'));
```

`.map()`, `.where()`, `.take()` all work on Streams the same way they
do on `List`.

## Error handling in async code

### try/catch with Futures (recap)

```dart
Future<void> main() async {
  try {
    double temp = await fetchTemperature();
    print(temp);
  } catch (e) {
    print('Error: $e');
  }
}
```

### Throwing inside a Future

```dart
Future<double> fetchTemperature() async {
  await Future.delayed(Duration(seconds: 1));
  throw Exception('Sensor not responding');
}
```

The `throw` inside an async function doesn't crash immediately — it
gets attached to the `Future`, and only triggers when someone `await`s
it (or calls `.catchError()`).

### Error handling with Streams

```dart
Stream<int> riskyStream() async* {
  yield 1;
  yield 2;
  throw Exception('Something went wrong');
}

Future<void> main() async {
  try {
    await for (int value in riskyStream()) {
      print('Got: $value');
    }
  } catch (e) {
    print('Stream error: $e');
  }
}
```

Output: `Got: 1`, `Got: 2`, then `Stream error: Exception: Something
went wrong` — values already received stay valid, only the point of
failure stops the stream.

### `.listen()` with error handling

```dart
riskyStream().listen(
  (value) => print('Got: $value'),
  onError: (e) => print('Stream error: $e'),
  onDone: () => print('Done'),
);
```

## Why this matters

- **Flutter** — `StreamBuilder` widget rebuilds UI automatically as new
  Stream values arrive (live chat, real-time data, animations).
- **Backend** — handling incoming data in chunks (large file uploads,
  live WebSocket connections) relies on Streams instead of Futures.

## Full example

```dart
Stream<int> countStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    if (i == 4) {
      throw Exception('Something broke at $i');
    }
    yield i;
  }
}

Future<void> main() async {
  try {
    await for (int value in countStream()) {
      print('Received: $value');
    }
  } catch (e) {
    print('Caught error: $e');
  } finally {
    print('Done listening.');
  }
}
```

## Summary

- `Future` = one value, eventually. `Stream` = many values, over time.
- `async*` + `yield` = create a Stream, sending values one at a time.
- `await for` = listen to a Stream inside an async function, pausing at
  each value.
- `.listen()` = non-blocking way to listen, using callbacks.
- Streams support `.map()`, `.where()`, `.take()`, like Lists.
- `try/catch` works around both `await` (Future) and `await for`
  (Stream) — errors thrown mid-stream still preserve values already
  received before the error.
- `finally` still works the same way with async code.

## Practice

Write a Dart program that:

1. Writes a Stream function `countdownStream(int start)` using `async*`,
   that yields numbers from `start` down to `1`, one per second.
2. If the countdown reaches `0` or below when called, `throw` an
   exception instead of yielding.
3. In `main()`, use `await for` to listen to the stream, printing each
   value.
4. Wrap it in `try/catch/finally` — print `"Liftoff!"` in the `catch`
   block if an error occurs organically at the end (hint: after
   yielding down to 1, yield nothing more and let the loop end normally
   instead — OR throw on purpose after 1 to trigger `"Liftoff!"` via the
   catch block, your choice of design).
5. Test it with a valid start value (e.g. `5`).

Run it with:

```bash
dart run filename.dart
```
