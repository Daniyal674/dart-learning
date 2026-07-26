import 'dart:io';
void main(){
    List <String> questions =[
        'What is the capital of France?',
        'Which planet is known as the Red Planet?',
        'What is the chemical symbol for water?',
        'How many contienents are there on Earth?',
        'Which city hosted the USA and Iran negotiations in 2026?'
    ];
    List <String> correctAnswers =[
        'Paris',
        'Mars',
        'H2O',
        '7',
        'Islamabad'
    ];
    int score = 0;
    int result = input(questions, correctAnswers, score);
    print('\nYou scored $result out of ${questions.length}. \n');
    calculatePercentage(result, questions.length);
}

int input(List <String> questions, List <String> correctAnswers, int score){
    for(int i=0; i<questions.length; i++){
        print(questions[i]);
        String userAnswer = stdin.readLineSync() ?? '';
        if(userAnswer.toLowerCase() == correctAnswers[i].toLowerCase()){
            score++;
            print('Correct Answer!\n');
        }
        else{
            print('Wrong! The correct answer is ${correctAnswers[i]}\n');
        }
    }
    return score;
}

void calculatePercentage(int score, int totalQuestions){
    double percentage = (score / totalQuestions) * 100;
    if(percentage == 100){
        print('You answerd all questions correctly.');
    }
    else if(percentage >= 80){
        print('You done it, but one step away from all.');
    }
    else if(percentage >= 50){
        print('You passed!');
    }
    else{
        print('You failed!');
    }
}