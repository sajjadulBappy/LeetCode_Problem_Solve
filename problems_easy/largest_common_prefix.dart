class Solution {
  
  String matchChar(String current, String prev){
    int len = current.length > prev.length ? prev.length : current.length;
    String matchResult = "";  
    
    for(int i = 0; i < len; i++){
      if(current[i] == prev[i]){
        matchResult += current[i];
      }else{
        return matchResult;
      }
    }
    return matchResult;
  }
  String longestCommonPrefix(List<String> strs) {
    if(strs.length == 1){
      return "";
    }
    String matchPrefix = matchChar(strs[0], strs[1]);
    if(matchPrefix.isEmpty){
      return matchPrefix;
    }
    
    for(int i = 2; i < strs.length; i++){
      String currentPrefix = strs[i];
      matchPrefix = matchChar(currentPrefix, matchPrefix);
      if(matchPrefix.isEmpty){
        return matchPrefix;
      }
    }
    return matchPrefix;
    
  }
}

void main(){
  Solution obj = Solution();
  print(obj.longestCommonPrefix( [""]));
}
