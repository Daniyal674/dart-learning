import 'dart:io';
void main(){
    print('Enter a number: ');
    int N = int.parse(stdin.readLineSync() ?? '1');
    int fact = factorial(N);
    print('Factorial of $N is: $fact');
}

int factorial(int n){
    if(n <= 0 || n == 1){
        return 1;
    }
    return n * factorial(n - 1);
}