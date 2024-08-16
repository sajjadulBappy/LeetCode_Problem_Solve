class Solution {
  void rotate(List<int> nums, int k) {

      print(nums);
  }
}

List<T> leftShift<T>(List<T> lst) {
  if (lst.isNotEmpty) {
    // Return a new list with the first element at the end
    return [lst.last] + lst.sublist(0, lst.length - 1);
  }
  return lst; // Return the original list if empty
}

void main() {
  List<int> myList = [1, 2, 3, 4];
  List<int> shiftedList = leftShift(myList);
  print(shiftedList); // Output: [2, 3, 4, 1]
}

// void main() {
//   var solution = Solution();
//   solution.rotate([1], 3);
// }