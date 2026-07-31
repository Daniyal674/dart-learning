import 'dart:io';
void main() {
    print('Enter a number: ');
    int N = int.parse(stdin.readLineSync() ?? '0');
    int result = countDigits(N);
    print('Number of digits in $N is: $result');
}

int countDigits(int n){
    if (n==0){
        return 0;
    }
    return 1 + countDigits(n.abs() ~/ 10);
}