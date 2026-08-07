class InvalidAgeException implements Exception {
  String message;
  InvalidAgeException(this.message);

  @override
  String toString() => 'InvalidAgeException: $message';
}

void checkAge(int age) {
  if (age < 0) {
    throw InvalidAgeException('Age cannot be negative');
  }
  print('Age is valid: $age');
}

class Box<T> {
  T content;
  Box(this.content);

  void show() {
    print('Box contains: $content');
  }
}

void main() {
  try {
    checkAge(-5);
  } catch (e) {
    print('Caught error: $e');
  } finally {
    print('Age check finished');
  }

  Box<int> intBox = Box<int>(10);
  intBox.show();

  Box<String> stringBox = Box<String>('Dart');
  stringBox.show();
}