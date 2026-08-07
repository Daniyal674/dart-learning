int divide(int a, int b){
    if( b== 0){
        throw DivideByZeroException('Cannot divide by zero');
    }
    return a ~/ b;
}

class DivideByZeroException implements Exception {
  String message;
  DivideByZeroException(this.message);

  @override
  String toString() => 'DivideByZeroException: $message';
}

class Pair<T> {
  T first;
  T second;

  Pair(this.first, this.second);

  void show() {
    print('Pair contains: $first and $second');
  }
}

void main() {
  try {
    print(divide(10, 0));
  } catch (e) {
    print('Caught error: $e');
  } finally {
    print('Operation complete');
  }

  Pair<int> intPair = Pair<int>(1, 2);
  intPair.show();

  Pair<String> stringPair = Pair<String>('Hello', 'World');
  stringPair.show();
}