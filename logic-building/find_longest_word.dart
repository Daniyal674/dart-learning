String findLongestWord(String sentence){
    List<String> words = sentence.split(' ');
    String findMaximum = words[0];
    for(int i=1; i<words.length; i++){
        if(words[i].length > findMaximum.length){
            findMaximum=words[i];
        }
    }
    return findMaximum;
}

void main(){
    String sentence = 'the quick brown fox jumps over the lazy dog';
    print('The longest word in the sentence is: ${findLongestWord(sentence)}');
}