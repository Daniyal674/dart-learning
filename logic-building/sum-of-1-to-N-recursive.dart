import 'dart:io';
void main(){
    print('Enter a number: ');
    int N = int.parse(stdin.readLineSync() ?? '1');
    int result = sum(N);
    print('The sum of 1 to $N is: $result');
}

int sum(int N){
    int result = 0;
    if(N<=0){
        return 0;
    }
    result = N + sum(N-1);
    return result;
}