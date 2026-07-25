void main() {
  String? name;
  print(name ?? 'Guest'); // Guest

  name ??= 'Alex';
  print(name); // Alex

  String? city = 'Lahore';
  print(city!.toUpperCase()); // LAHORE

  late String greeting;
  greeting = 'Hello!';
  print(greeting);
}