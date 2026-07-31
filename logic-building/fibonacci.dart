import 'dart:io';
void main() {
    print('Enter a number: ');
    int N =int.parse(stdin.readLineSync() ?? '1');
    fabonacci(N);
}

void fabonacci(int n) {
    int a = 0, b = 1, c;
    print('Fibonacci series up to $n terms:');
    for (int i = 0; i < n; i++) {
        print(a);
        c = a + b;
        a = b;
        b = c;
    }
}