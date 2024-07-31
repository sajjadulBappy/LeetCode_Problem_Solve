class Solution {
  int majorityElement(List<int> nums) {
      int majorityNumber = nums.length ~/ 2;
      List<int> passdNum = [];
      for(int i = 0; i < nums.length; i++){
        if(!passdNum.contains(nums[i])){
          int count = nums.where((item) => item == nums[i]).length;
          passdNum.add(nums[i]);
          if(count > majorityNumber){
            return nums[i];
          }
        }
      }
      return 0;
  }
}

void main() {
  var solution = Solution();
  int res = solution.majorityElement([2,2,1,1,1,2,2]);
  print(res);
}