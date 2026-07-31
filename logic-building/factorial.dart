import 'dart:io';
void main(){
    print('Enter a number: ');
    int N = int.parse(stdin.readLineSync() ?? '1');
    int fact = factorial(N);
    print('Factorial of $N is: $fact');
}

int factorial(int n){
    int result = 1;
    for(int i = 1; i<=n; i++){
        result *= i;
    }
    return result;
}