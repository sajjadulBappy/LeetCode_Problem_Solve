class Solution {
  bool isPalindrome(int x) {
    int lastNumber;
    int reversNumber = 0;
    int checkingNumber = x;

    while(checkingNumber > 0){
      lastNumber = checkingNumber % 10;
      reversNumber = reversNumber * 10 + lastNumber;
      checkingNumber = checkingNumber ~/ 10;
    }

    return reversNumber == x;
  }
}


void main(){
  Solution obj = Solution();
  print(obj.isPalindrome(33533));
}