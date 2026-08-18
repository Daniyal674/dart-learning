void removeDuplicates(List<int> a){
    Set<int> uniqueSet = a.toSet();
    List<int> uniqueList = uniqueSet.toList();
    print('List after removing duplicates: ');
    print(uniqueList);
}

void removeDuplicatesManually(List<int> a) {
  List<int> uniqueList = [];

  for (int i = 0; i < a.length; i++) {
    if (!uniqueList.contains(a[i])) {
      uniqueList.add(a[i]);
    }
  }

  print('List after removing duplicates (manual): ');
  print(uniqueList);
}


void main(){
    List<int> a = [1, 2, 2, 3, 4, 4, 5];
    print('Original List: ');
    print(a);
    removeDuplicates(a);
    removeDuplicatesManually(a);
}