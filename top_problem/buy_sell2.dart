class Solution {
  int maxProfit(List<int> prices) {
      int totalProfit = 0;
      for(int i = 1; i < prices.length; i++){
        if(prices[i-1] < prices[i]){
          totalProfit += prices[i] - prices[i-1];
        }
      }
      return totalProfit;
  }
}

void main() {
  var solution = Solution();
  int res = solution.maxProfit( [7,1,5,3,6,4]);
  print(res);
}