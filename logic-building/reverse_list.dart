void reverseList(List<int> a){
    List<int> reversed = [];
    for(int i=a.length-1; i>=0; i--){
        reversed.add(a[i]);
    } 
    print('Reversed List:');
    print(reversed);
}

void reverseListInPlace(List<int> a){
    int left=0, right=a.length-1;
    while(left<right){
        int temp = a[left];
        a[left] = a[right];
        a[right] = temp;
        left++;
        right--;
    }
    print('Reversed List:');
    print(a);
}

void main(){
    List<int> a = [3, 8, 15, 1, 22, 7];
    print('Original List:');
    print(a);
    reverseList(a);
    reverseListInPlace(a);
}