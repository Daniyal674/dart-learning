Future<String> fetchUserName() {
  return Future.delayed(Duration(seconds: 1), () => 'Alex');
}

Future<int> fetchUserAge() {
  return Future.delayed(Duration(seconds: 1), () => 25);
}

Future<void> main() async {
  print('Loading user...');

  try {
    String name = await fetchUserName();
    int age = await fetchUserAge();
    print('User: $name, Age: $age');
  } catch (e) {
    print('Error: $e');
  }

  print('Done loading.');
}