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