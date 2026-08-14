void bubblesort(List <int> a, int n){
    for(int i=0; i<n-1; i++){
        for(int j=0; j<n-i-1; j++){
            if(a[j]> a[j+1]){
                int temp= a[j];
                a[j]=a[j+1];
                a[j+1] = temp;
            }
        }
    }
}

void main(){
    List <int> a = [5, 2, 9, 1, 5, 6];
    int n = a.length;
    bubblesort(a, n);
    print(a);
}