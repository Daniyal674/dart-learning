import 'dart:io';

void main(){
    print('Enter a word or pharase:');
    String input = stdin.readLineSync() ?? '';
    bool result = isPlaindrome(input);
    if (result){
        print ('Plaindrome!');
    }
    else{
        print ('Not a plaindrome!');
    }
}

bool isPlaindrome(String input){
    String lower = input.toLowerCase();
    String cleaned = lower.replaceAll(' ', '');
    String reversed = cleaned.split('').reversed.join();
    if(cleaned == reversed){
        return true;
    }
    else{
        return false;
    }
}