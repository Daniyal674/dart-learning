# 15-flutter-layouts — Example

Demonstrates the four core Flutter layout widgets: `Row`, `Column`,
`Stack`, and `Container`, combined together in a single widget tree.

## What this example shows

- **`Column`** — arranges a `Row` and a `Stack` vertically, one below
  the other.
- **`Row`** — lays out three colored `Container`s horizontally, evenly
  spaced using `MainAxisAlignment.spaceEvenly`.
- **`Stack`** — overlaps a decorated `Container` (background) with a
  `Positioned` `Text` widget layered on top of it.
- **`Container`** — used repeatedly for sizing, background color, and
  decoration (rounded corners via `BoxDecoration`).
- **`Positioned`** — wraps the `Text` widget to place it at a specific
  offset (bottom-right) inside the `Stack`, rather than centered by
  default.

## Widget tree for this example

```text
MyApp (StatelessWidget)
  └── MaterialApp
        └── Scaffold
              └── Center
                    └── Column
                          ├── Row
                          │     ├── Container (blue)
                          │     ├── Container (red)
                          │     └── Container (green)
                          ├── SizedBox (spacer)
                          └── Stack
                                ├── Container (background, rounded)
                                └── Positioned
                                      └── Text ('Text')
```

## How to run this example

Flutter widgets need a full Flutter project — not runnable with plain
`dart run`.

1. Create a Flutter project (if you don't already have one for this
   lesson):

   ```bash
   flutter create layouts_app
   cd layouts_app
   ```

2. Open `lib/main.dart`, replace its contents with this example's code.
3. Run it:

   ```bash
   flutter run -d chrome
   ```
