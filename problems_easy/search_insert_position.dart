class Solution {
  int searchInsert(List<int> nums, int target) {
    int start = 0;
    int end = nums.length - 1;

    while (start <= end) {
      int mid = start + ((end - start) ~/ 2);

      if (nums[mid] == target) {
        return mid;
      } else if (nums[mid] < target) {
        start = mid + 1;
      } else {
        end = mid - 1;
      }
    }

    return start;
  }
}

void main(){
  Solution obj = Solution();
  print(obj.searchInsert([2,4,5,9,10], 11));
}