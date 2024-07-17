class Solution {
  List<int> plusOne(List<int> digits) {
    int tempNumber = 0;
    int len = digits.length;
    bool isAdd = true;
    List<int> result = [];
    for(int i = len -1; i >= 0; i--){

      if(isAdd){
        int sum = digits[i] + 1;
        if(sum == 10){
          result.insert(0, 0);
          tempNumber = 1;
        }else{
          result.insert(0, sum);
          tempNumber = 0;
          isAdd = false;
        }
      }else{
        isAdd = false;
        result.insert(0, digits[i]);
      }
    }

    if(isAdd){
      result.insert(0, tempNumber);
    }
    return result;
  }
}
void main(){
  Solution obj = Solution();
  List<int> result = obj.plusOne([1,2,4]);
  print(result);
}