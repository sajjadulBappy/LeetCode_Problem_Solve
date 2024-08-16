class Solution {
  List<int> removeDuplicates(List<int> nums) {
      int count = 1;
      int index = 1;
      if(nums.isEmpty) return nums;
      for(int current = 1; current < nums.length; current++){
        if(nums[current - 1] == nums[current]){
            if(count < 2){
              nums[index] = nums[current];
              index++;
            }
            count++;
        }else{
          nums[index] = nums[current];
          index++;

          count = 1;
        }
      }
      return nums;
  }
}
void main() {
  var solution = Solution();
  List<int> res = solution.removeDuplicates([1,1,1,2,2,2,2,3,3,3,4,5,5]);
  print(res);
}