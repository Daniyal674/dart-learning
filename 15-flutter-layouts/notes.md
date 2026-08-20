# 15 - Flutter Layout Widgets: Row, Column, Stack, Container

## Why layout widgets matter

A single widget (like `Text` or a button) doesn't know how to position
itself relative to others — you need **layout widgets** to arrange
multiple widgets on screen: side by side, stacked vertically, overlapping,
or wrapped with spacing/styling.

## Column

Arranges children **vertically**, top to bottom. You already used this
in Lesson 14 to stack `Header` and `LikeButton`.

```dart
Column(
  children: [
    Text('First'),
    Text('Second'),
    Text('Third'),
  ],
)
```

### Key properties

```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center, // vertical alignment (main axis)
  crossAxisAlignment: CrossAxisAlignment.start, // horizontal alignment (cross axis)
  children: [...],
)
```

For a `Column`, the **main axis is vertical** (top-to-bottom direction
it arranges children in), and the **cross axis is horizontal**.

## Row

Same idea as `Column`, but arranges children **horizontally**, left to
right.

```dart
Row(
  children: [
    Icon(Icons.star),
    Text('Rating: 5'),
  ],
)
```

For a `Row`, the **main axis is horizontal**, and the **cross axis is
vertical** — opposite of `Column`.

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [...],
)
```

### Common alignment values (both Row and Column)

| Value | Effect |
| --- | --- |
| `MainAxisAlignment.start` | pack children at the beginning |
| `MainAxisAlignment.center` | pack children in the middle |
| `MainAxisAlignment.spaceBetween` | equal space between children |
| `MainAxisAlignment.spaceEvenly` | equal space around all children |

## Stack

Unlike `Row`/`Column` (which lay children out one after another), `Stack`
**overlaps** children on top of each other — like layers. Useful for
things like putting text over an image, or a badge on top of an icon.

```dart
Stack(
  children: [
    Container(width: 100, height: 100, color: Colors.blue),
    Positioned(
      top: 10,
      left: 10,
      child: Text('Overlay text'),
    ),
  ],
)
```

- Children are drawn in order — first child at the bottom, last child
  on top.
- `Positioned` lets you place a child at a specific offset within the
  Stack (top/left/right/bottom), instead of it just filling space.

## Container

A general-purpose box widget — used for sizing, padding, margin,
background color, borders, and decoration. Think of it as Dart's
version of a styled `<div>`.

```dart
Container(
  width: 150,
  height: 80,
  padding: const EdgeInsets.all(12),
  margin: const EdgeInsets.symmetric(horizontal: 20),
  decoration: BoxDecoration(
    color: Colors.orange,
    borderRadius: BorderRadius.circular(8),
  ),
  child: const Text('Inside a container'),
)
```

- `padding` = space **inside** the container, between its edge and its
  child.
- `margin` = space **outside** the container, between it and other
  widgets.
- `decoration` = styling — background color, borders, rounded corners,
  shadows.

## Combining them together

Real layouts nest these inside each other constantly:

```dart
Column(
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(width: 50, height: 50, color: Colors.red),
        Container(width: 50, height: 50, color: Colors.green),
        Container(width: 50, height: 50, color: Colors.blue),
      ],
    ),
    const SizedBox(height: 20), // empty spacer, common pairing
    Stack(
      children: [
        Container(width: 100, height: 100, color: Colors.grey),
        const Positioned(
          bottom: 5,
          right: 5,
          child: Text('Badge'),
        ),
      ],
    ),
  ],
)
```

This is exactly the same nesting concept as your widget tree from
Lesson 14 — a `Column` containing a `Row`, which contains three
`Container`s, all just widgets inside widgets.

## Choosing which to use

| Need | Use |
| --- | --- |
| Stack items vertically | `Column` |
| Line items up horizontally | `Row` |
| Overlap items on top of each other | `Stack` |
| Size, pad, color, or decorate a single widget | `Container` |

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
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(width: 60, height: 60, color: Colors.red),
                  Container(width: 60, height: 60, color: Colors.green),
                  Container(width: 60, height: 60, color: Colors.blue),
                ],
              ),
              const SizedBox(height: 20),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  const Text(
                    'Stacked',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

## Summary

- `Column` = vertical layout, main axis top-to-bottom.
- `Row` = horizontal layout, main axis left-to-right.
- `Stack` = overlapping layout, children layered on top of each other,
  positioned with `Positioned`.
- `Container` = general styling box — size, padding, margin, color,
  decoration.
- These nest inside each other constantly, forming a larger widget tree.

## Practice

Write a Flutter widget program that:

1. Creates a `Row` with three `Container`s of different colors, evenly
   spaced (`MainAxisAlignment.spaceEvenly`).
2. Below that `Row` (inside a `Column`), creates a `Stack` with a
   `Container` as the background and a `Text` widget positioned in the
   bottom-right corner using `Positioned`.
3. Wraps the whole thing in a `Container` with padding and a light
   background color.

Run it with:

```bash
flutter run -d chrome
```
