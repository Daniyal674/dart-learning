# 10 - OOP: Classes and Objects

## What is a class?

A class is a blueprint for creating objects. It defines what properties (data) and methods (behavior) something has, without being a real thing yet — just the design.

## What is an object?

An object is an actual instance created from a class. If `Car` is the class (blueprint), then a specific red Toyota is an object built from that blueprint.

## Why OOP matters for Dart

Everything in Flutter is a class — every widget, every screen, is an object built from a class. Backend Dart also relies on classes to represent things like users, requests, database models.

## Defining a class

```dart
class Person {
  String name = '';
  int age = 0;

  void greet() {
    print('Hi, I am $name and I am $age years old.');
  }
}
```

- `name` and `age` = properties (data the object holds).
- `greet()` = method (behavior/action the object can perform).

## Creating an object

```dart
void main() {
  Person p1 = Person();
  p1.name = 'Alex';
  p1.age = 25;
  p1.greet(); // Hi, I am Alex and I am 25 years old.
}
```

`p1` is an object — a real instance of the `Person` blueprint.

## Constructors

A constructor sets up an object's initial values when it's created, instead of assigning them one by one after.

### Basic constructor

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age); // constructor

  void greet() {
    print('Hi, I am $name and I am $age years old.');
  }
}
```

```dart
Person p1 = Person('Alex', 25);
p1.greet();
```

`this.name` means "take the value passed in and assign it to this
object's `name` property." Much shorter than assigning line by line.

### Named constructor parameters

Same idea as named function parameters — clearer when calling.

```dart
class Person {
  String name;
  int age;

  Person({required this.name, required this.age});
}
```

```dart
Person p1 = Person(name: 'Sara', age: 30);
```

### Named constructors (multiple ways to build an object)

A class can have more than one constructor, each with a different name.

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  Person.guest() : name = 'Guest', age = 0; // named constructor
}
```

```dart
Person p1 = Person('Alex', 25);
Person p2 = Person.guest();
```

## Private vs public

Dart has no `private`/`public` keywords like C++. Instead:

- **Public** (default) — no prefix, accessible from anywhere.
- **Private** — prefix the name with `_`. Private means scoped to the
  **file** (library) it's declared in, not just the class. Code in the
  same file can still access it directly; code in other files cannot,
  even after importing.

There is no `protected` in Dart — only public or file-private.

```dart
class Person {
  String name;       // public
  int _age;           // private — only accessible within this file

  Person(this.name, this._age);

  int getAge() {       // public method, safely exposes private data
    return _age;
  }
}
```

```dart
void main() {
  Person p = Person('Alex', 25);
  print(p.name);      // works, public
  print(p.getAge());  // works, public method exposing private data
  // print(p._age);   // ERROR if this were in a different file
}
```

## Full example

```dart
class Person {
  String name;
  int _age;

  Person(this.name, this._age);

  Person.guest() : name = 'Guest', _age = 0;

  void greet() {
    print('Hi, I am $name and I am $_age years old.');
  }

  int getAge() {
    return _age;
  }
}

void main() {
  Person p1 = Person('Alex', 25);
  p1.greet();
  print('Age via getter: ${p1.getAge()}');

  Person p2 = Person.guest();
  p2.greet();
} 
```

## Summary

- Class = blueprint. Object = actual instance built from it.
- Properties = data the object holds. Methods = actions it can do.
- Constructor = sets initial values when object is created.
- `this.propertyName` in constructor = shortcut to assign passed-in value.
- Named constructors = multiple ways to build the same type of object.
- `_` prefix = private, scoped to the file (not the class, unlike C++).
- No `protected` in Dart — only public or file-private.

## Practice

Write a Dart program that:

1. Creates a class `Book` with properties `title`, `author`, and a
   **private** property `_pages`.
2. Gives it a constructor to set all three when creating a Book.
3. Adds a public method `getPages()` that returns `_pages`.
4. Adds a method `summary()` that prints something like:
   `"Book Title by Author, 300 pages."`
5. Creates two different `Book` objects and calls `summary()` on each.

Run it with:

```bash
dart run filename.dart
```
