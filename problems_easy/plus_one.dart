class Solution {
  List<int> plusOne(List<int> digits) {
    int endIndex = digits.length - 1;
    int sumDigits = 0;
    int number =  1;
    int decrementNumber = 0;
    bool isDecrementNumber = true;

    while(endIndex>=0){
      if(digits[endIndex] == 0) {
        sumDigits += number;
        decrementNumber += number;
        number = number * 10;
      }
      else{
        sumDigits += digits[endIndex] * number;
        number = number * 10;
        isDecrementNumber = false;
      }
      endIndex--;

    }
    sumDigits = sumDigits - decrementNumber;
    sumDigits++;
    print(sumDigits);
    if(sumDigits <10){
      return [sumDigits];
    }
    if (sumDigits > 10) number = number ~/ 10;
    print(number);
    List<int> result = [];
    while(number>=1){
      int singleDigite = sumDigits ~/ number;
      if (singleDigite == 10){
        result.add(1);
        result.add(0);
        sumDigits -= number * singleDigite;
        number = number ~/ 10;
      }else{
        result.add(singleDigite);
        sumDigits -= number * singleDigite;
        number = number ~/ 10;
      }
    }
    return result;
  }
}

void main(){
  Solution obj = Solution();
  List<int> result = obj.plusOne([6,1,4,5,3,9,0,1,9,5,1,8,6,7,0,5,5,4]);
  print(result);
}