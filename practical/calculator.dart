import 'dart:io';

void main(){
    print('Enter first number: ');
    double num1 = double.parse(stdin.readLineSync() ?? '0');
    print('Enter second number: ');
    double num2 = double.parse(stdin.readLineSync() ?? '0');
    print('Enter an operator (+, -, *, /): ');
    String operator = stdin.readLineSync() ?? '+';
    if(operator == '/' && num2 == 0){
            print('For division the second number must not equal to zero');
        return;
    }

    print('Result: ${calculate(num1, num2, operator)}');  
}

double calculate(double a, double b, String op){
    if(op=='+'){
        return a+b;
    }
    else if(op=='-'){
        return a-b;
    }
    else if(op=='*'){
        return a*b;
    }
    else if(op=='/'){
        return a/b;
    }
    else{
        return 0;
    }
}