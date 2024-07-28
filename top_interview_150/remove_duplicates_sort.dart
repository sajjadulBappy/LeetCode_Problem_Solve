class Solution {
  int removeDuplicates(List<int> nums) {
      int index = 0;
      for(int i = 1; i < nums.length; i++){
        if(nums[i] != nums[index]){
          index++;
          nums[index] = nums[i];
        }
      }
      return index+1;
  }
}

void main() {
  var solution = Solution();
  int res = solution.removeDuplicates([1,1,2,2,3,4,5,5]);
  print(res);
}