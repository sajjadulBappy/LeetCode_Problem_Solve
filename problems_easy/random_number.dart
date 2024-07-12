// class Solution {
//   int romanToInt(String s) {
//       // int I = 1, V = 5, X = 10, L = 50, C = 100, M = 1000;
//       // int IV = 4, IX = 9, XL = 40, XC = 90, CD = 400, CM = 900;
//
//       var romanNumbers = {
//         "I" : 1,
//         "V" : 5,
//         "X" : 10,
//         "L" : 50,
//         "C" : 100,
//         "M" : 1000,
//         "IV" : 4,
//         "IX" : 9,
//         "XL" : 40,
//         "XC" : 90,
//         "CD" : 400,
//         "CM" : 900,
//       };
//
//       int len = s.length;
//       int result = 0;
//
//       for(int i = 0; i < len; i++){
//         if(i == len - 1){
//             result += romanNumbers[s[i]]!;
//         }
//         else if(romanNumbers[s[i]]! < romanNumbers[s[i+1]]!){
//           result += romanNumbers[s[i] + s[i+1]]!;
//           i++;
//         }else{
//           result += romanNumbers[s[i]]!;
//         }
//
//
//       }
//       return result;
//   }
// }
//
// void main(){
//   Solution obj = Solution();
//   print(obj.romanToInt("DCXXI"));
// }

// class Solution {
//   int romanToInt(String s) {
//     var romanNumbers = {
//       "I" : 1,
//       "V" : 5,
//       "X" : 10,
//       "L" : 50,
//       "C" : 100,
//       "M" : 1000,
//       "IV" : 4,
//       "IX" : 9,
//       "XL" : 40,
//       "XC" : 90,
//       "CD" : 400,
//       "CM" : 900,
//     };
//
//     int len = s.length;
//     int result = 0;
//
//     for(int i = 0; i < len; i++){
//       if(i == len - 1){
//         result += romanNumbers[s[i]] ?? 0;
//       }
//       else if(romanNumbers[s[i]] < romanNumbers[s[i+1]]){
//         result += (romanNumbers[s[i+1]] ?? 0) - (romanNumbers[s[i]] ?? 0);
//         i++;
//       }else{
//         result += romanNumbers[s[i]] ?? 0;
//       }
//     }
//     return result;
//   }
// }
//
// void main(){
//   Solution obj = Solution();
//   print(obj.romanToInt("DCXXI"));
// }

// class Solution {
//   int romanToInt(String s) {
//     var romanNumbers = {
//       "I": 1,
//       "V": 5,
//       "X": 10,
//       "L": 50,
//       "C": 100,
//       "M": 1000,
//       "IV": 4,
//       "IX": 9,
//       "XL": 40,
//       "XC": 90,
//       "CD": 400,
//       "CM": 900,
//     };
//
//     int len = s.length;
//     int result = 0;
//
//     for (int i = 0; i < len; i++) {
//       if (i == len - 1) {
//         result += romanNumbers[s[i]] ?? 0;
//       } else if (romanNumbers[s[i]] != null && romanNumbers[s[i+1]] != null && romanNumbers[s[i]]! < romanNumbers[s[i + 1]]!) {
//         result += (romanNumbers[s[i + 1]] ?? 0) - (romanNumbers[s[i]] ?? 0);
//         i++;
//       } else {
//         result += romanNumbers[s[i]] ?? 0;
//       }
//     }
//     return result;
//   }
// }
//
// void main() {
//   Solution obj = Solution();
//   print(obj.romanToInt("DCXXI")); // Output: 621
// }

class Solution {
  int romanToInt(String s) {
    var romanNumbers = {
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000,
    };

    int result = 0;
    int prevValue = 0;

    for (int i = s.length - 1; i >= 0; i--) {
      int currValue = romanNumbers[s[i]]!;

      if (currValue < prevValue) {
        result -= currValue;
      } else {
        result += currValue;
      }

      prevValue = currValue;
    }

    return result;
  }
}

void main() {
  Solution obj = Solution();
  print(obj.romanToInt("DCXXI")); // Output: 621
}