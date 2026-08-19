# Solution: 14-flutter-intro

## Practical Statement

Write a Flutter widget program that:

1. Creates a `StatelessWidget` called `Header` that displays a fixed
   title text, e.g. `"My App"`.
2. Creates a `StatefulWidget` called `LikeButton` that starts with
   `likes = 0`, and has a button that increases `likes` by 1 each time
   it's pressed, displaying the current count.
3. Combines both widgets inside a `Column` in your `MyApp`'s `build()`
   method.

## What this solution demonstrates

- **`StatelessWidget`** (`Header`) — a widget with no internal changing
  data, styled once and never rebuilt on its own.
- **`StatefulWidget` + `State`** (`LikeButton` / `_LikeButtonState`) —
  a widget that holds changing data (`likes`) and rebuilds itself via
  `setState()` whenever the button is pressed.
- **Widget composition** — `MyApp`'s `build()` method combines both
  widgets together inside a single `Column`, showing how independent
  widgets are assembled into a larger UI tree.

## How the pieces fit together

```text
MyApp (StatelessWidget)
  └── MaterialApp
        └── Scaffold
              └── Center
                    └── Column
                          ├── Header (StatelessWidget)
                          └── LikeButton (StatefulWidget)
                                └── _LikeButtonState
                                      ├── Text('Likes: $likes')
                                      └── ElevatedButton → increment()
```

## How to run this solution

Flutter widgets can't be run with plain `dart run` — they need a full
Flutter project.

1. Create a Flutter project (only needed once):
   
   ```bash
   flutter create flutter_intro
   cd counter_app
   ```

2. Open `lib/main.dart`, delete its default contents, and paste in this
   solution's code.
3. Run it, targeting Chrome (simplest option, no emulator needed):
   
   ```bash
   flutter run -d chrome
   ```

4. You should see the title "My App" and a "Likes: 0" counter with a
   "Like" button — pressing it increases the count each time.

