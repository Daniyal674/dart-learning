# Solution: 15-flutter-layouts

## Practical Statement

Write a Flutter widget program that:

1. Creates a `Row` with three `Container`s of different colors, evenly
   spaced (`MainAxisAlignment.spaceEvenly`).
2. Below that `Row` (inside a `Column`), creates a `Stack` with a
   `Container` as the background and a `Text` widget positioned in the
   bottom-right corner using `Positioned`.
3. Wraps the whole thing in a `Container` with padding and a light
   background color.

## What this solution demonstrates

- **`Row` + `MainAxisAlignment.spaceEvenly`** — three colored
  `Container`s spaced evenly across the horizontal axis.
- **`Column`** — stacks the `Row` and the `Stack` vertically, with a
  `SizedBox` spacer between them.
- **`Stack` + `Positioned`** — a background `Container` (styled with
  `BoxDecoration` for color and rounded corners) with a `Text` widget
  layered on top, offset to the bottom-right corner using `Positioned`.
- **`Container`** — used both for the colored boxes in the `Row` and
  for the styled background inside the `Stack`.

## Widget tree

```text
MyApp (StatelessWidget)
  └── MaterialApp
        └── Scaffold
              └── Center
                    └── Column
                          ├── Row (spaceEvenly)
                          │     ├── Container (blue, 75x75)
                          │     ├── Container (red, 75x75)
                          │     └── Container (green, 75x75)
                          ├── SizedBox (height: 30, spacer)
                          └── Stack (alignment: center)
                                ├── Container (150x150, orange, rounded)
                                └── Positioned (bottom: 5, right: 5)
                                      └── Text ('Text', bold)
```

## How to run this solution

1. Create a Flutter project:

   ```bash
   flutter create layouts_app
   cd layouts_app
   ```

2. Open `lib/main.dart`, replace its contents with this solution's code.
3. Run it:

   ```bash
   flutter run -d chrome
   ```

## Bugs found and fixed during this practical

These were real mistakes made and corrected while solving this
practical — kept here as a reference for common Flutter syntax traps:

1. **`Alignment.Center`** → should be `Alignment.center` (lowercase).
   Flutter's static constants use camelCase, not PascalCase.
2. **`BorderRadius.circular[16]`** → `circular` is a method, needs
   parentheses: `BorderRadius.circular(16)`, not square brackets.
3. **`Positioned` misused as a property on `Text`** — the first attempt
   tried adding `position: Positioned.bottom-right` directly onto a
   `Text` widget, which isn't valid. `Positioned` is a separate
   **wrapper widget** that takes `bottom`/`right`/`top`/`left` as
   numeric offsets, and the widget you want to position becomes its
   `child`:

   ```dart
   Positioned(
     bottom: 5,
     right: 5,
     child: Text('Text'),
   )
   ```
