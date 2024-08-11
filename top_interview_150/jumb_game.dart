// class Solution {
//   bool canJump(List<int> nums) {
//      int index = 0;
//      while(index < nums.length){
//        if(index == nums.length -1){
//          return true;
//        }
//        int prev = index;
//        index += nums[index];
//
//        if(prev == index){
//          return false;
//        }
//      }
//      return false;
//   }
// }

class Solution {
  int max(int a, int b) {
    return a > b ? a : b; // Helper function to find the maximum of two numbers.
  }
  bool canJump(List<int> nums) {
    int maxReach = 0; // The farthest index we can reach.

    for (int i = 0; i < nums.length; i++) {
      if (i > maxReach) {
        // If the current index is greater than the max reachable index,
        // it's not possible to reach this index.
        return false;
      }
      // Update the max reachable index.
      maxReach = max(maxReach, i + nums[i]);

      // If we already can reach the last index, we can return true.
      if (maxReach >= nums.length - 1) {
        return true;
      }
    }

    return false; // If we exit the loop, we cannot reach the last index.
  }
}



void main(){
  Solution obj = Solution();
  print(obj.canJump( [2,3,1,1,2,4]));
}