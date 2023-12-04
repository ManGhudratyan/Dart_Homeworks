List<int> getFibonnaciNumbers(number){
    List<int> fibNumbers = [1, 1];
    for (var i = 2; i < number; i++){
        fibNumbers.add(fibNumbers[i - 1] + fibNumbers[i - 2]);
    }
    return fibNumbers;
}
void main(){
  print(getFibonnaciNumbers(10));
}