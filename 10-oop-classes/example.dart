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