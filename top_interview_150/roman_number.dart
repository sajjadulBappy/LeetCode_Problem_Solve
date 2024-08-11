class Solution {
  int romanToInt(String s) {
    Map<String, int> roman = {
      "I" : 1,
      "V" : 5,
      "X" : 10,
      "L" : 50,
      "C" : 100,
      "D" : 500,
      "M" : 1000,
    };

    int number = 0;
    int? prevNumber = 0;
    for(int i = s.length -1; i >= 0; i--){
      if(roman[s[i]]! >= prevNumber!){
        prevNumber = roman[s[i]];
        number += roman[s[i]]!;
      }else{
        prevNumber = roman[s[i]];
        number -= roman[s[i]]!;
      }
    }
    return number;
  }
}

void main(){
  Solution obj = Solution();
  print(obj.romanToInt("MCMXCIV"));
}