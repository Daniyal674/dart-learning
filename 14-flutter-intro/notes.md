# 15 - Flutter Intro: Widget Tree, StatelessWidget vs StatefulWidget

## What is Flutter?

Flutter is Google's UI toolkit, built on Dart, for building apps that
run on mobile, web, and desktop from a single codebase. Everything you
see on screen in a Flutter app — text, buttons, images, layouts — is
built using **widgets**.

## What is a widget?

A widget is a piece of UI. Not just visual things like buttons or text
— even invisible structural things like padding, alignment, and layout
containers are widgets. In Flutter, **everything is a widget**.

Since you already know classes and objects (Lesson 10), this maps
directly: a widget is just a Dart **class**. Building a UI means
creating and combining widget objects.

## The widget tree

Widgets don't exist alone — they're nested inside each other, forming a
tree structure. A parent widget contains child widgets, which may
contain their own children, and so on.
MaterialApp
├── Scaffold
├── Column
├── Text('Hello')
├── Icon(Icons.star)
└── ElevatedButton('Click me')

Flutter reads this tree top to bottom to figure out what to draw, and
where. Every time something changes on screen, Flutter is really just
rebuilding some portion of this tree.

This connects to what you already know: `Column` is a widget that
takes a `List` of child widgets — the exact same List concept from
Lesson 09, just holding widgets instead of ints or strings.

## StatelessWidget

A widget that **never changes** once built. Give it data, it displays
that data, and it stays exactly the same unless a parent widget
rebuilds it with different data.

```dart
class Greeting extends StatelessWidget {
  final String name;

  const Greeting({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text('Hello, $name!');
  }
}
```

- `extends StatelessWidget` — same inheritance concept from Lesson 11.
- `build()` — a method every widget must implement, returning what
  should be drawn on screen.
- `final String name` — set once via the constructor, never reassigned
  (same `final` concept from Lesson 03).

Use `StatelessWidget` when a widget has no internal changing data — a
label, an icon, a static layout.

## StatefulWidget

A widget that **can change over time** — a counter increasing, a
checkbox toggling, text updating as someone types. Needs two classes
working together:

```dart
class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0; // this can change

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Count: $count'),
        ElevatedButton(
          onPressed: increment,
          child: const Text('Add'),
        ),
      ],
    );
  }
}
```

- `Counter` — the outer widget, mostly just a shell.
- `_CounterState` — holds the actual changing data (`count`) and the
  `build()` method. The underscore prefix means it's private to this
  file (same private convention from Lesson 10).
- `setState(() { ... })` — tells Flutter "something changed, rebuild
  this widget's UI." Without calling `setState()`, changing `count`
  alone wouldn't update what's on screen — Flutter wouldn't know to
  redraw anything.

## Why the split exists

Rebuilding UI costs performance. If Flutter treated every widget as
"might change," it would waste effort constantly checking things that
never actually change. `StatelessWidget` tells Flutter "skip me unless
my parent rebuilds me." `StatefulWidget` says "I manage my own changing
data, rebuild me when I call `setState()`."

## Choosing which to use

| Situation | Use |
| --- | --- |
| Static text, icon, fixed layout | `StatelessWidget` |
| Counter, form input, toggle, anything with changing internal data | `StatefulWidget` |

## Full example

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Counter(),
        ),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Count: $count'),
        ElevatedButton(
          onPressed: increment,
          child: const Text('Add'),
        ),
      ],
    );
  }
}
```

## Summary

- Everything visible (and some invisible structure) in Flutter is a
  widget — a Dart class.
- Widgets nest inside each other, forming a **widget tree**.
- `StatelessWidget` = fixed once built, no internal changing data.
- `StatefulWidget` = has a paired `State` class holding data that can
  change, rebuilt via `setState()`.
- `setState()` is the signal that tells Flutter "rebuild this part of
  the tree" — changing a variable alone does nothing visually without it.

## Practice

Write a Flutter widget program that:

1. Creates a `StatelessWidget` called `Header` that displays a fixed
   title text, e.g. `"My App"`.
2. Creates a `StatefulWidget` called `LikeButton` that starts with
   `likes = 0`, and has a button that increases `likes` by 1 each time
   it's pressed, displaying the current count.
3. Combines both widgets inside a `Column` in your `MyApp`'s `build()`
   method.

Run it with:

```bash
flutter run
```

(Requires a Flutter project set up via `flutter create my_app`, not
just the Dart SDK — Flutter widgets don't run with plain `dart run`.)
