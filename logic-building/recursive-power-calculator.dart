import 'dart:io';
void main(){
    print('Enter base: ');
    int base = int.parse(stdin.readLineSync() ?? '0');
    print('Enter exponent: ');
    int exponent = int.parse(stdin.readLineSync() ?? '0');
    int result = power(base, exponent);
    print('$base raised to the power of $exponent is: $result');
}

int power(int base, int exponent) {
    if (exponent == 0) {
        return 1;
    }
    return base * power(base, exponent - 1);
}