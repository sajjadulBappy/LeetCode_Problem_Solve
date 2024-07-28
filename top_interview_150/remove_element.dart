class Solution {
  int removeElement(List<int> nums, int val) {
    int len = nums.length;
    int k = 0;
    List<int> result=[];

    for(int i = 0; i < len; i++){
      if(nums[i] != val){
        result.add(nums[i]);
        k++;
      }
    }
    nums.insertAll(0, result);
    print(nums);
    return k;
  }
}

void main() {
  var solution = Solution();
  int res = solution.removeElement([3,2,2,3], 3);
  print(res);
}