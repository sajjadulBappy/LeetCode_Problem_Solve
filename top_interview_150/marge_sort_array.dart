class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    if (m == 0) {
      nums1 = nums2;
    } else {
      for (int i = 0; i < n; i++) {
        int temp = 0;
        for (int j = 1; j < m + n; j++) {
          if (nums1[j] > nums2[i] && nums1[j - 1] <= nums2[i]) {
            temp = nums1[j];
            nums1[j] = nums2[i];
          } else if (nums1[j] == 0) {
            nums1[j] = temp != 0 ? temp : nums2[i];
            break;
          } else {
            if (temp != 0) {
              int nTemp = nums1[j];
              nums1[j] = temp;
              temp = nTemp;
            }
          }
        }
      }
    }

    print(nums1);
  }
}

void main() {
  var solution = Solution();
  solution.merge([0], 0, [1], 1);
}
