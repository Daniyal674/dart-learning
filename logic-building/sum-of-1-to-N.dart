import 'dart:io';
void main(){
    print('Enter a number: ');
    int N = int.parse(stdin.readLineSync() ?? '1');
    int sum = sumof1toN(N);
    print('The sum of 1 to $N is: $sum');
}

int sumof1toN(int N){
    int sum = 0;
    for(int i=1; i<=N; i++){
        sum += i;
    }
    return sum;
}