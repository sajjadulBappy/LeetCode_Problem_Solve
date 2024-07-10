class Solution {
  List<int> twoSum(List<int> nums, int target) {
    int index_1 = 0, index_2 = 0;

    for(int i = 0; i < nums.length - 1; i++){
      for(int j = i+1; j < nums.length; j++){
        var target_result = 0;

        if(nums[i] + nums[j] == target){
          index_1 = i;
          index_2 = j;
          break;
        }
      }
    }

    return [index_1, index_2];
  }
}

void main(){
  Solution obj = Solution();
  print(obj.twoSum([2,7,11,15], 9));

}