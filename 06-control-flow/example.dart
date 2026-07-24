void main() {
  // if / else example
  int age = 20;

  if (age >= 18) {
    print('You are an adult.');
  } else {
    print('You are a minor.');
  }

  // if / else if / else example
  int score = 75;

  if (score >= 90) {
    print('Grade: A');
  } else if (score >= 70) {
    print('Grade: B');
  } else {
    print('Grade: C');
  }

  // switch example
  String day = 'Monday';

  switch (day) {
    case 'Monday':
      print('Start of the week');
      break;
    case 'Friday':
      print('Almost weekend');
      break;
    default:
      print('Just another day');
  }

  // for loop example
  for (int i = 1; i <= 5; i++) {
    print('Count: $i');
  }

  // while loop example
  int count = 0;
  while (count < 3) {
    print('Count is $count');
    count++;
  }

  // do-while loop example
  int count2 = 0;
  do {
    print('Count is $count2');
    count2++;
  } while (count2 < 3);
}