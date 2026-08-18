int sum(List<int> a){
    int sum = 0;
    for(int i=0; i<a.length; i++){
        sum +=a[i];
    }
    return sum;
}

void main(){
    List<int> a = [1, 9, 2, 15];
    int result = sum(a);
    print('Sum of all the elements: $result');
}