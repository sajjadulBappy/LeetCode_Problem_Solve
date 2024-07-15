class Solution {
  int strStr(String haystack, String needle) {
    int loopLen = haystack.length - needle.length;
    int needlen = needle.length;
    String checkString = haystack.substring(0, needlen);

    if(checkString == needle){
      return 0;
    }
    for(int i = 1; i < loopLen+1; i++){
      checkString = haystack.substring(i, i+needlen);
      if(checkString == needle) return i;
    }
    return -1;
    
  }
}

void main(){
  Solution obj = Solution();
  print(obj.strStr("mississippi", "issip")); //"mississippi" , "issip" = 4 but this code output -1 this is wrong....
}