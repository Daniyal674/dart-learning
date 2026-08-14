void mergesort(List<int> a, int left, int right) {
  if (left < right) {
    int mid = left + (right - left) ~/ 2;
    mergesort(a, left, mid);
    mergesort(a, mid + 1, right);
    merge(a, left, mid, right);
  }
}

void merge(List<int> a, int left, int mid, int right) {
  int n1 = mid - left + 1;
  int n2 = right - mid;
  List<int> leftA = List.filled(n1, 0);
  List<int> rightA = List.filled(n2, 0);

  for (int i = 0; i < n1; i++) {
    leftA[i] = a[left + i];
  }
  for (int j = 0; j < n2; j++) {
    rightA[j] = a[mid + 1 + j];
  }

  int i = 0, j = 0, k = left;
  while (i < n1 && j < n2) {
    if (leftA[i] <= rightA[j]) {
      a[k] = leftA[i];
      i += 1;
    } else {
      a[k] = rightA[j];
      j += 1;
    }
    k += 1;
  }
  while (i < n1) {
    a[k] = leftA[i];
    i += 1;
    k += 1;
  }
  while (j < n2) {
    a[k] = rightA[j];
    j += 1;
    k += 1;
  }
}

void main() {
  List<int> a = [5, 2, 9, 1, 5, 6];
  int n = a.length;
  mergesort(a, 0, n - 1);
  print(a);
}