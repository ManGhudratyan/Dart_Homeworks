List<int> getFirstLastElems(ml) {
  List<int> getElems = [];

  if (ml.isNotEmpty) {
    getElems.add(ml[0]);
    getElems.add(ml[ml.length - 1]);
  }
  return getElems;
}

void main() {
  List<int> myList = [5, 10, 15, 20, 25];
  print(getFirstLastElems(myList));
}
