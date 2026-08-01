import 'dart:io';
void main(){
    print('Enter a number: ');
    int N = int.parse(stdin.readLineSync() ?? '1');
    countdown(N);
}

void countdown(int n) {
  if (n == 0) {
    print('Liftoff!');
    return;
  }
  print(n);
  countdown(n - 1);
}