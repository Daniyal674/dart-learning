import 'dart:io';
void main() {
    print('Enter a number: ');
    int N = int.parse(stdin.readLineSync() ?? '1');
    int result = fibonacci(N);
    print('Fibonacci of $N is: $result');
}

int fibonacci(int n) {
    if (n <= 1) {
        return n;
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2);
    }
}