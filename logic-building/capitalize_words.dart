String capitalizeWords(String sentence){
    List<String> words = sentence.split(' ');
    List<String> capitalizedWords=[];
    for(String word in words){
        if(word.isEmpty){
            capitalizedWords.add('');
            continue;
        }
        String firstChar = word[0].toUpperCase();
        String restOfWord = word.substring(1);
        capitalizedWords.add(firstChar + restOfWord);
    }
    return capitalizedWords.join(' ');
}

void main(){
    String sentence = 'hello world from dart';
    print('Sentence after Capitalization: ${capitalizeWords(sentence)}');
}