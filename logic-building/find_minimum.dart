int findMinimum(List<int> a) {
  int min = a[0];
  for (int i = 1; i < a.length; i++) {
    if (a[i] < max) {
      min = a[i];
    }
  }
  return min;
}

void main(){
    List <int> a = [1, 9, 2, 15];
    int result = findMinimum(a);
    print('The minimum number in the array is: $result'); 
}