int linearsearch(List <int> a, int target){
    for(int i=0; i<a.length; i++){
        if(a[i]==target){
            return i;
        }
    }
    return -1;
}

void main(){
    List <int> a = [1, 2, 5, 5, 6, 9];
    int result = linearsearch(a, 10);
    if(result != -1){
        print('The target is found at index: $result');
    }
    else{
        print('The target is not found');
    }
}