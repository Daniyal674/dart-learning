import 'dart:io';

void main() {
    print('What is your favorite food?');
    String? food = stdin.readLineSync();
    print('What is your city?');
    String? city = stdin.readLineSync();
    print('Someone from $city who loves $food - great combo!');
}