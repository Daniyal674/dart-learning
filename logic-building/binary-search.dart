int binarysearch(List<int> a, int target){
    int low=0, high=a.length-1;
    while(low<=high){
        int mid = low+ (high-low) ~/ 2;
        if(a[mid]== target){
            return mid;
        }
        else if (a[mid]<target){
            low=mid+1;
        }
        else{
            high= mid-1;
        }
    }
    return -1;
}

void main(){
    List <int> a = [1, 2, 5, 5, 6, 9];
    int result = binarysearch(a, 5);
    if(result != -1){
        print('The target is found at index: $result');
    }
    else{
        print('The target is not found');
    }
}