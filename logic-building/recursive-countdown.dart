import 'dart:io';
void main(){
    print('Enter a number: ');
    int N = int.parse(stdin.readLineSync() ?? '1');
    int result = countdown(N);
    print('Liftoff!');
}

int countdown(int n) {
    if (n == 0) {
        return 0;
    }
    print(n);
    return countdown(n - 1);
}