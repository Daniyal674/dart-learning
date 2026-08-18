Map<String, int> wordFrequency(String sentence){
    String lower = sentence.toLowerCase();
    List<String> words = lower.split(' ');
    Map<String, int> wordCounts={};
    for(int i=0; i<words.length; i++){
        String word = words[i];
        if(wordCounts.containsKey(word)){
            wordCounts[word] = wordCounts[word]! + 1;
        }
        else{
            wordCounts[word]=1;
        }
    }
    return wordCounts;
}

void main(){
    String sentence = 'the dog ran and the dog barked at another dog and the cat ran';
    print(wordFrequency(sentence));
}