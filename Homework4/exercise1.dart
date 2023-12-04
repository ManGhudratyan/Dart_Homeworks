List<int> getEvenNumbers(ml){
  List<int> evenNumbersList = [];
  for (var i = 0; i < ml.length; i++){
    if (ml.isNotEmpty){
      if(ml[i] % 2 == 0){
            evenNumbersList.add(ml[i]);
      }
    }
  }
  return evenNumbersList;
}

void main(){
  List<int> myList = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  print(getEvenNumbers(myList));
}