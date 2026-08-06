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