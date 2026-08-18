void countEvenOdd(List<int> a){
    int even=0, odd=0;
    for(int i=0; i<a.length; i++){
        if(a[i]%2==0){
            even++;
        }
        else{
            odd++;
        }
    }
    print('Number of Even elements in array: $even\nNumber of Odd elements in array: $odd');
}

void main(){
    List<int> a = [1,2,3,4,5,6,7,8,9];
    countEvenOdd(a);
}