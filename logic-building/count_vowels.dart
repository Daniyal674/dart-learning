int countVowels(String text){
    String cleaned = text.toLowerCase().replaceAll(' ', '');
    int vowel = 0;
    for(int i=0; i<cleaned.length;i++){
        if(cleaned[i]=='a' || cleaned[i]=='e' || cleaned[i]=='i' || cleaned[i]=='o' || cleaned[i]=='u'){
            vowel++;
        }
    }
    return vowel;
}

void main(){
    String text = 'The Quick Brown Fox Jumps Over the Lazy Dog';
    print('Vowels in the strings are: ${countVowels(text)}');
}