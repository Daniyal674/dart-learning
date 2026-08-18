String firstNonRepeatingCharacter(String text) {
    Map<String, int> charCounts = {};
    for (int i = 0; i < text.length; i++) {
        String char = text[i];
        charCounts[char] = (charCounts[char] ?? 0) + 1;
    }
    for (int i = 0; i < text.length; i++) {
        String char = text[i];
        if (charCounts[char] == 1) {
            return char;
        }
    }
    return '';
}

void main(){
    String text = 'swiss';
    print('The first non-repeating character in the string is: ${firstNonRepeatingCharacter(text)}');
}