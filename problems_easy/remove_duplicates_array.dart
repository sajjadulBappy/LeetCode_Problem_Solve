class Solution {
  int removeDuplicates(List<int> nums) {
    int k = 0;
    for(int i = 1; i < nums.length; i++) {
      if(nums[i - 1] != nums[i]) {
        k++;
        nums[k] = nums[i];
      }
    }
    print(nums);
    return k + 1;
  }
}

void main(){
  Solution obj = Solution();
  int result =  obj.removeDuplicates([0,0,1,1,1,2,2,3,3,4]);
  print(result);
}