# 09 - Collections: List, Map, Set

## What is a collection?

A collection is a single variable that holds multiple values together,
instead of creating a separate variable for each one. Dart has three
main collection types: `List`, `Set`, and `Map`.

## List

An ordered group of values. Duplicates allowed. Access items by index
(position), starting from `0`.

```dart
List<String> fruits = ['apple', 'banana', 'mango'];

print(fruits[0]); // apple
print(fruits.length); // 3
```

### Common List methods

```dart
fruits.add('orange');        // add to end
fruits.remove('banana');     // remove by value
fruits.removeAt(0);          // remove by index
fruits.contains('mango');    // true/false
fruits.sort();               // sort alphabetically/numerically
```

### Looping through a List

```dart
for (String fruit in fruits) {
  print(fruit);
}
```

Or using index, when you need position too:

```dart
for (int i = 0; i < fruits.length; i++) {
  print('${i}: ${fruits[i]}');
}
```

## Set

Like a List, but **no duplicates allowed**, and order is not guaranteed.
Useful when you only care about unique values.

```dart
Set<String> colors = {'red', 'green', 'blue'};

colors.add('red'); // ignored, already exists
print(colors); // {red, green, blue}
print(colors.length); // 3
```

### Common Set methods

```dart
colors.contains('red'); // true
colors.remove('blue');
```

## Map

Key-value pairs. Look up a value using its key, instead of a numeric
index. Keys must be unique.

```dart
Map<String, int> ages = {
  'Alex': 25,
  'Sara': 30,
};

print(ages['Alex']); // 25
```

### Common Map methods

```dart
ages['John'] = 40;        // add new key-value pair
ages.remove('Sara');      // remove by key
ages.containsKey('Alex'); // true
ages.keys;                // all keys
ages.values;               // all values
```

### Looping through a Map

```dart
ages.forEach((key, value) {
  print('$key is $value years old');
});
```

Or using a for loop over entries:

```dart
for (var entry in ages.entries) {
  print('${entry.key} is ${entry.value} years old');
}
```

## Choosing which to use

| Use case | Collection |
| --- | --- |
| Ordered list, duplicates ok | `List` |
| Unique values only, order doesn't matter | `Set` |
| Look up values by a name/key | `Map` |

## Useful methods across collections

These work on `List` (and often `Set`) and return a new collection or value, without changing the original:

```dart
List<int> numbers = [1, 2, 3, 4, 5];

var doubled = numbers.map((n) => n * 2).toList(); // [2,4,6,8,10]
var evens = numbers.where((n) => n % 2 == 0).toList(); // [2,4]
var total = numbers.fold(0, (sum, n) => sum + n); // 15
```

- `.map()` = transform every item.
- `.where()` = filter items matching a condition.
- `.fold()` = combine all items into a single value (like a running total).

## Full example

```dart
void main() {
  List<String> fruits = ['apple', 'banana', 'mango'];
  fruits.add('orange');
  print(fruits);

  Set<String> colors = {'red', 'green', 'blue'};
  colors.add('red'); // ignored
  print(colors);

  Map<String, int> ages = {'Alex': 25, 'Sara': 30};
  ages['John'] = 40;
  ages.forEach((key, value) {
    print('$key is $value years old');
  });

  List<int> numbers = [1, 2, 3, 4, 5];
  var doubled = numbers.map((n) => n * 2).toList();
  var evens = numbers.where((n) => n % 2 == 0).toList();
  var total = numbers.fold(0, (sum, n) => sum + n);

  print('Doubled: $doubled');
  print('Evens: $evens');
  print('Total: $total');
}
```

## Summary

- `List` = ordered, duplicates allowed, access by index.
- `Set` = unique values only, no guaranteed order.
- `Map` = key-value pairs, access by key.
- `.map()`, `.where()`, `.fold()` = powerful shortcuts for transforming collections without manual loops.

## Practice

Write a Dart program that:

1. Creates a `List<String>` of 5 favorite movies.
2. Creates a `Set<String>` from a list that has duplicate genres, to show duplicates get removed.
3. Creates a `Map<String, String>` mapping each movie to its genre.
4. Uses `.where()` to filter movies of a specific genre.
5. Prints the filtered result.

Run it with:

```bash
dart run filename.dart
```
