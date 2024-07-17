class Solution {

  int lengthOfLastWord(String s) {
    String removeSpace = s.trim();
    int index = removeSpace.length - 1;
    int len = 0;
    while(removeSpace[index] != ' '){
      len++;
      index--;
      if(index == -1){
        return len;
      }
    }
    return len;
  }
}


void main(){
  Solution obj = Solution();
  int result = obj.lengthOfLastWord("a");
  print(result);
}