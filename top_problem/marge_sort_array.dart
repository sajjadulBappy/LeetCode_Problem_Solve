class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    if (n == 0) {
      return;
    }
    int last_index = m+n - 1;
    while(n > 0 && m > 0){
      if(nums1[m-1] > nums2[n-1]){
        nums1[last_index] = nums1[m-1];
        m--;
      }else{
        nums1[last_index] = nums2[n-1];
        n--;
      }
      last_index--;
    }

    while(n > 0){
      nums1[last_index] = nums2[n-1];
      n--;
      last_index--;
    }

  }
}

void main() {
  var solution = Solution();
  solution.merge([0], 0, [1], 1);
}
