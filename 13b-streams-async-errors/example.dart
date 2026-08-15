Stream<int> countStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    if (i == 4) {
      throw Exception('Something broke at $i');
    }
    yield i;
  }
}

Future<void> main() async {
  try {
    await for (int value in countStream()) {
      print('Received: $value');
    }
  } catch (e) {
    print('Caught error: $e');
  } finally {
    print('Done listening.');
  }
}