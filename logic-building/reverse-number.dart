import 'dart:io';
void main() {
    print('Enter a number: ');
    int N = int.parse(stdin.readLineSync() ?? '0');
    int result = reverseNumber(N);
    print('Reverse of $N is: $result');
}

int reverseNumber(int n) {
    int reversed = 0;
    while (n != 0) {
        int digit = n % 10;     // Get the last digit of n
        reversed = reversed * 10 + digit; // Append the digit to the reversed number
        n ~/= 10; // Remove the last digit from n ~/ operator performs integer division
    }
    return reversed;
}