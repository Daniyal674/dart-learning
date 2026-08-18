int countWordOccurrences(String sentence, String target) {
    int count = 0;
    String lower = sentence.toLowerCase();
    String lowerTarget = target.toLowerCase();
    List<String> words = lower.split(' ');
    for (int i = 0; i < words.length; i++) {
        if (words[i] == lowerTarget) {
            count++;
        }
    }
    return count;
}

void main(){
    String sentence = 'the Dog ran and the dog barked at another dog';
    String target = 'Dog';
    print('The targeted word \'$target\' occured in the sentence ${countWordOccurrences(sentence, target)} times.');
}