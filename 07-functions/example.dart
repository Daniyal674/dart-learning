void main() {
  greet('Alex');

  int sum = add(5, 3);
  print('Sum: $sum');

  showProfile(name: 'Sara', age: 30);

  greetUser();
  greetUser(name: 'Alex');

  print(square(4));

  print(describe('Alex', 21));
}

void greet(String name) {
  print('Hello, $name!');
}

int add(int a, int b) {
  return a + b;
}

void showProfile({required String name, required int age}) {
  print('Name: $name, Age: $age');
}

void greetUser({String name = 'Guest'}) {
  print('Welcome, $name!');
}

int square(int x) => x * x;

String describe(String name, int age) {
  return 'Name: $name, Age: ${age + 1} (next year)';
}