import 'dart:io';

void main(){
    print('Enter temperature: ');
    double temp=double.parse(stdin.readLineSync() ?? '0');
    print('Enter conversion type \n 1. Celsius to Fahrenheit \n 2. Farhenheit to Celsius \n 3. Celsius to Kelvin \n 4. Kelvin to Celsius \n 5. Fahrenheit to Kelvin \n 6. Kelvin to Fahrenheit: ');
    int choice = int.parse(stdin.readLineSync() ?? '1');
    String? type = null;
    if (choice == 1){
        type = 'Celsius to Fahrenheit';
    }
    else if (choice == 2){
        type = 'Fahrenheit to Celsius';
    }
    else if (choice == 3){
        type = 'Celsius to Kelvin';
    }
    else if (choice == 4){
        type = 'Kelvin to Celsius';
    }
    else if (choice == 5){
        type = 'Fahrenheit to Kelvin';
    }
    else if (choice == 6){
        type = 'Kelvin to Fahrenheit';
    }
    else{
        print('Invalid choice');
        return;
    }
    if (type == 'Celsius to Fahrenheit'){
        print('Result: ${convert(temp, type)} F');
    }
    else if (type == 'Fahrenheit to Celsius'){
        print('Result: ${convert(temp, type)} C');
    }
    else if (type == 'Celsius to Kelvin'){
        print('Result: ${convert(temp, type)} K');
    }
    else if (type == 'Kelvin to Celsius'){
        print('Result: ${convert(temp, type)} C');
    }
    else if (type == 'Fahrenheit to Kelvin'){
        print('Result: ${convert(temp, type)} K');
    }
    else if (type == 'Kelvin to Fahrenheit'){
        print('Result: ${convert(temp, type)} F');
    }
}

double convert(double temp, String type){
    switch(type){
        case 'Celsius to Fahrenheit':
        return (temp * 9/5) +32;
        case 'Fahrenheit to Celsius':
        return (temp -32) * 5/9;
        case 'Celsius to Kelvin':
        return temp + 273.15;
        case 'Kelvin to Celsius':
        return temp - 273.15;
        case 'Fahrenheit to Kelvin':
        return (temp - 32) * 5/9 + 273.15;
        case 'Kelvin to Fahrenheit':
        return (temp - 273.15) * 9/5 + 32;
        default:
        return 0;
    }
}