# 11 - Inheritance, Interfaces, and Mixins

## Inheritance

Inheritance lets one class reuse the properties and methods of another,
instead of rewriting them. The class being reused is the **parent**
(superclass); the new class is the **child** (subclass).

### Syntax

```dart
class Parent {
  void greet() {
    print('Hello from Parent');
  }
}

class Child extends Parent {
  // automatically has greet() too
}
```

```dart
void main() {
  Child c = Child();
  c.greet(); // Hello from Parent
}
```

### Overriding a method

A child class can replace a parent's method with its own version, using
`@override`.

```dart
class Animal {
  void makeSound() {
    print('Some generic animal sound');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Woof!');
  }
}
```

```dart
Dog d = Dog();
d.makeSound(); // Woof!
```

### Calling the parent's version with `super`

Sometimes you want to extend a method, not fully replace it.

```dart
class Dog extends Animal {
  @override
  void makeSound() {
    super.makeSound(); // runs parent's version first
    print('Woof!');
  }
}
```

### Constructors with inheritance

```dart
class Animal {
  String name;
  Animal(this.name);
}

class Dog extends Animal {
  Dog(String name) : super(name); // pass value up to parent constructor
}
```

## Interfaces

Dart has no separate `interface` keyword — **every class is automatically
an interface**. Any class can be used as an interface via `implements`.

Difference from `extends`:

- `extends` = inherit the actual code (methods already written).
- `implements` = promise to provide your own version of every method —
  nothing is inherited, only the shape (method names/signatures) is
  enforced.

```dart
class Flyable {
  void fly() {
    print('Flying...');
  }
}

class Bird implements Flyable {
  @override
  void fly() {
    print('Bird flying with wings');
  }
}
```

If `Bird` forgets to implement `fly()`, Dart gives a compile error —
`implements` forces you to fill in every method yourself.

A class can implement multiple interfaces (unlike `extends`, which only
allows one parent):

```dart
class Superhero implements Flyable, Swimmable {
  @override
  void fly() { print('Flying like a hero'); }

  @override
  void swim() { print('Swimming like a hero'); }
}
```

## Mixins

Dart doesn't allow a class to `extend` more than one class (no multiple
inheritance). Mixins solve this — they let you share reusable code across
multiple unrelated classes, without a strict parent-child relationship.

### Mixin syntax

```dart
mixin Swimmer {
  void swim() {
    print('Swimming...');
  }
}

mixin Runner {
  void run() {
    print('Running...');
  }
}

class Athlete with Swimmer, Runner {
  // gets both swim() and run(), without extending either
}
```

```dart
Athlete a = Athlete();
a.swim(); // Swimming...
a.run();  // Running...
```

Unlike `implements`, mixin methods come pre-written — you don't have to
rewrite them yourself, same as `extends`. But unlike `extends`, you can
mix in more than one.

## Choosing which to use

| Goal | Use |
| --- | --- |
| Share code from ONE closely related parent | `extends` |
| Force a class to follow a specific method shape (no shared code) | `implements` |
| Share code across MULTIPLE unrelated classes | `with` (mixin) |

## Full example

```dart
class Animal {
  String name;
  Animal(this.name);

  void makeSound() {
    print('Some generic animal sound');
  }
}

mixin Swimmer {
  void swim() {
    print('Swimming...');
  }
}

class Flyable {
  void fly() {
    print('Flying...');
  }
}

class Duck extends Animal with Swimmer implements Flyable {
  Duck(String name) : super(name);

  @override
  void makeSound() {
    super.makeSound();
    print('Quack!');
  }

  @override
  void fly() {
    print('$name is flying low over the pond');
  }
}

void main() {
  Duck d = Duck('Donald');
  d.makeSound(); // Some generic animal sound \n Quack!
  d.swim();      // Swimming...
  d.fly();       // Donald is flying low over the pond
}
```

## Summary

- `extends` = inherit code from one parent class. Use `@override` to
  replace a method, `super` to call the parent's version.
- `implements` = every class is an interface. Forces you to write your
  own version of every method — nothing is shared, only enforced. Can
  implement multiple interfaces.
- `with` (mixin) = share ready-made code across multiple unrelated
  classes. Solves the "no multiple inheritance" limit.
- A class can combine all three: `extends` one, `with` several mixins,
  `implements` several interfaces.

## Practice

Write a Dart program that:

1. Creates a class `Vehicle` with a property `brand` and a method
   `startEngine()` that prints `"Engine started"`.
2. Creates a class `Car extends Vehicle`, overriding `startEngine()` to
   also call `super.startEngine()` then print `"Car is ready to drive"`.
3. Creates a mixin `Electric` with a method `chargeBattery()` that
   prints `"Charging..."`.
4. Creates a class `Tesla extends Vehicle with Electric`, and calls both
   `startEngine()` and `chargeBattery()` on a `Tesla` object.

Run it with:

```bash
dart run filename.dart
```
