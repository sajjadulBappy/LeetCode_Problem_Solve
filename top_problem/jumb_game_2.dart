class Solution {
  int jump(List<int> nums) {
    if (nums.length <= 1) return 0; // No jumps needed if array has 1 or fewer elements

    int jumps = 0; // Count of jumps made
    int currentEnd = 0; // The end of the current jump
    int farthest = 0; // The farthest index we can reach in the next jump

    for (int i = 0; i < nums.length - 1; i++) {
      // Update the farthest we can reach from the current position
      farthest = max(farthest, i + nums[i]);

      // If we have reached the end of the current jump
      if (i == currentEnd) {
        jumps++; // Increment jump count
        currentEnd = farthest; // Update the end of the current jump

        // If we can reach or exceed the last index, we can stop
        if (currentEnd >= nums.length - 1) {
          break;
        }
      }
    }

    return jumps;
  }

  int max(int a, int b) {
    return a > b ? a : b; // Helper function to find the maximum
  }
}

void main(){
  Solution obj = Solution();
  print(obj.jump( [2,3,1,1,4]));
}