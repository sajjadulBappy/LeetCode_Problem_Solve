class Solution {
  List<int> productExceptSelf(List<int> nums) {
    int productExcept = 1;
    List<int> products = [];
    for(int i = 0; i < nums.length; i++){
      for(int j = 0; j < nums.length; j++){
        productExcept *= i == j ? 1: nums[j];
      }
      products.add(productExcept);
      productExcept  = 1;
    }
    return products;

  }
}

void main(){
  Solution obj = Solution();
  print(obj.productExceptSelf([1,2,3,4]));
}