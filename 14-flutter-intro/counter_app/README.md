# 14-flutter-intro

Covers the widget tree concept, and the difference between
`StatelessWidget` and `StatefulWidget` — the first Flutter lesson in
this repo, building on Dart OOP (Lesson 10) and inheritance (Lesson 11).

## Contents

- `notes.md` — theory: widget tree, StatelessWidget vs StatefulWidget,
  `setState()`, full code example.
- `exercise.dart` — the practice problem's starter reference (not
  directly runnable with `dart run`; see below).

## Practical Statement

Write a Flutter widget program that:

1. Creates a `StatelessWidget` called `Header` that displays a fixed
   title text, e.g. `"My App"`.
2. Creates a `StatefulWidget` called `LikeButton` that starts with
   `likes = 0`, and has a button that increases `likes` by 1 each time
   it's pressed, displaying the current count.
3. Combines both widgets inside a `Column` in your `MyApp`'s `build()`
   method.

Solution for this practical lives in [Solution](./solutions/flutter_intro/lib/main.dart).

## Why this lesson works differently from earlier ones

Every lesson before this used plain Dart, runnable directly with:

```bash
dart run exercise.dart
```

Flutter is different — it needs a full Flutter project structure, with
the entry point specifically at `lib/main.dart` inside a project
created by `flutter create`. You can't point `flutter run` at an
arbitrary `.dart` file the way `dart run` works.

So in this folder, `exercise.dart` is kept as a **reference file** —
readable code to study — not something you run in place.

## How to actually run the code in this lesson

1. Install Flutter (if not already installed):
   https://flutter.dev/docs/get-started/install
   Check it's working:
   
   ```bash
   flutter --version
   ```

2. Install the **Flutter** extension in VS Code (auto-installs Dart
   extension too, if missing).
3. Create a Flutter project:
   
   ```bash
   flutter create counter_app
   cd counter_app
   ```

4. Open `lib/main.dart`, replace its default contents with the code
   from `exercise.dart` (or the full solution in
   `solutions/14-flutter-intro.dart`).
5. Run it:
   
   ```bash
   flutter run -d chrome
   ```

   (Or target an Android emulator / Windows desktop if set up instead
   of Chrome.)

## Key concepts recap

- **Widget** = a piece of UI, built as a Dart class. Everything visible
  in a Flutter app is a widget.
- **Widget tree** = widgets nested inside other widgets, forming a
  hierarchy Flutter uses to decide what to draw.
- **StatelessWidget** = fixed once built, no internal changing data.
- **StatefulWidget** = paired with a `State` class holding data that
  can change, rebuilt via `setState()`.
- **`setState()`** = tells Flutter "rebuild this part of the tree" —
  changing a variable alone does nothing visually without it.
