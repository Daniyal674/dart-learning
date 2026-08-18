Map<String, int> characterFrequency(String text){
    Map<String, int> charCounts={};
    for(int i=0; i<text.length; i++){
        String char = text[i];
        if(charCounts.containsKey(char)){
            charCounts[char] = charCounts[char]! + 1;
        }
        else{
            charCounts[char]=1;
        }
    }
    return charCounts;
}

void main(){
    String text = 'banana';
    print(characterFrequency(text));
}