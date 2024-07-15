class Solution {
  int removeElement(List<int> nums, int val) {
    int k = 0;
    for(int i = 0; i < nums.length; i++) {
      if(nums[i] != val) {
        nums[k] = nums[i];
        k++;
      }
    }

    print(nums);
    return k;
  }
}

void main(){
  Solution obj = Solution();
  int result =  obj.removeElement([0,1,2,2,3,0,4,2], 2);
  print(result);
}