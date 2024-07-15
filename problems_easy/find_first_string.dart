class Solution {
  int strStr(String haystack, String needle) {
      int tempLen = 0;
      int haystackLen = haystack.length;
      int firstIndex = 0;
      bool isFirstIndex = true;
      
      for(int i = 0; i < haystackLen; i++){
        if(needle[tempLen] == haystack[i]){
          tempLen++;
          if(isFirstIndex){
            firstIndex = i;
            isFirstIndex = false;
          }
        }else{
          isFirstIndex = true;
          tempLen = 0;
          if(needle[tempLen] == haystack[i]){
            tempLen++;
            if(isFirstIndex){
              firstIndex = i;
              isFirstIndex = false;
            }
          }
        }
        
        if(tempLen == needle.length){
          return firstIndex;
        }
        
      }
      return -1;
  }
}

void main(){
  Solution obj = Solution();
  print(obj.strStr("leetcode", "code")); //"mississippi" , "issip" = 4 but this code output -1 this is wrong....
}