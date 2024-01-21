void bubbleSort(List<int> ml) {
  for (int i = 0; i < ml.length - 1; i++) {
    for (int j = 0; j < ml.length - 1 - i; j++) {
      if (ml[j] > ml[j + 1]) {
        int temp = ml[j];
        ml[j] = ml[j + 1];
        ml[j + 1] = temp;
      }
    }
  }
}

void selectionSort(List<int> ml) {
  int n = ml.length;
  for (int i = 0; i < n - 1; i++) {
    int minIndex = i;
    for (int j = i + 1; j < n; j++) {
      if (ml[j] < ml[minIndex]) {
        minIndex = j;
      }
    }

    if (minIndex != i) {
      int temp = ml[i];
      ml[i] = ml[minIndex];
      ml[minIndex] = temp;
    }
  }
}

void main() {
  List<int> numbers = [52, 21, 80, 32, 15, 74, 46, 69];
  print("Original List: $numbers");
  print("\nBubble sort algorithm");
  bubbleSort(numbers);
  print("Sorted List: $numbers");

  print("\nSelection sort algorithm");
  selectionSort(numbers);
  print("Sorted List: $numbers");
}
