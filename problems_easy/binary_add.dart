class Solution {
  String addBinary(String a, String b) {
    int aLen = a.length;
    int bLen = b.length;
    int carry = 0;
    String sum = '';

    for (int i = 0; i < (aLen > bLen ? aLen : bLen); i++) {
      // Reset tempSum for the current position
      int tempSum = carry;

      // Add from string a if available
      if (aLen - 1 - i >= 0) {
        tempSum += a[aLen - 1 - i] == '1' ? 1 : 0; // Convert '1' or '0' to integer
      }

      // Add from string b if available
      if (bLen - 1 - i >= 0) {
        tempSum += b[bLen - 1 - i] == '1' ? 1 : 0; // Convert '1' or '0' to integer
      }

      // Determine the carry and the current bit
      if (tempSum == 0) {
        carry = 0;
        sum += '0';
      } else if (tempSum == 1) {
        carry = 0;
        sum += '1';
      } else if (tempSum == 2) {
        carry = 1;
        sum += '0';
      } else { // tempSum == 3
        carry = 1;
        sum += '1';
      }
    }

    // If there's a carry left after the last addition
    if (carry > 0) {
      sum += '1';
    }

    // Since we built sum backwards, reverse it before returning
    return sum.split('').reversed.join('');
  }
}

void main() {
  var solution = Solution();
  String result = solution.addBinary("1010", "1011");
  print(result); // Output: "10101"
}