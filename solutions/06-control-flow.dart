import 'dart:io';

void main(){
    print('Enter a number:');
    int? number = int.parse(stdin.readLineSync()!);

    if(number > 0){
    print('The number is positive.');}
    else if(number < 0){
    print('The number is negative.');}
    else{
    print('The number is zero.');}
    
    for(int i=1; i<=number; i++){
        print(i);
    }
}