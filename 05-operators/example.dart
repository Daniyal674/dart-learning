void main() {
  int a = 10;
  int b = 3;

  print('Sum: ${a + b}');
  print('Difference: ${a - b}');
  print('Is equal: ${a == b}');
  print('Is greater: ${a > b}');

  bool isAdult = true;
  bool hasID = false;
  print('Can enter: ${isAdult && hasID}');

  int score = 5;
  score += 10;
  print('Updated score: $score');
}