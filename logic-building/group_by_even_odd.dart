Map<String, List<int>> groupByEvenOdd(List<int> numbers) {
    Map<String, List<int>> grouped = {'even': [],'odd': [],};
    for (int i = 0; i < numbers.length; i++){
        if(numbers[i]%2==0){
            grouped['even']!.add(numbers[i]);
        }
        else{
            grouped['odd']!.add(numbers[i]);
        }
    }
    return grouped;
}

void main(){
    List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
    print(groupByEvenOdd(numbers));
}