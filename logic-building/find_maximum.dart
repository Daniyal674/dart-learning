int findMaximum(List<int> a) {
  int max = a[0];
  for (int i = 1; i < a.length; i++) {
    if (a[i] > max) {
      max = a[i];
    }
  }
  return max;
}

void main(){
    List <int> a = [1, 9, 2, 15];
    int result = findMaximum(a);
    print('The maximum number in the array is: $result'); 
}