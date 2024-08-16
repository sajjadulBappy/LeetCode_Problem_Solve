class Solution {
  // int maxIndex(List<int> prices, int index){
  //     for(int i = index; i < prices.length; i++){
  //       if(prices[i] > prices[index]){
  //         index = i;
  //       }
  //     }
  //     return index;
  // }
  //
  // int minIndex(List<int> prices, ){
  //   int index = 0;
  //     for(int i = 1; i < prices.length; i++){
  //       if(prices[index] > prices[i]){
  //         index = i;
  //       }
  //     }
  //     return index;
  // }
  // int maxProfit(List<int> prices) {
  //     int index = minIndex(prices);
  //     if(index == prices.length - 1){
  //       return 0;
  //     }else{
  //       int maxNumIndex = maxIndex(prices, index+1);
  //       int result =prices[maxNumIndex] - prices[index];
  //       return result > 0 ? result : 0;
  //     }
  // }
//   int maxProfit(List<int> prices) {
//     int profit = 0;
//     for(int i = 0; i < prices.length; i++){
//       for(int j = i+1; j < prices.length; j++){
//         int sub = prices[j] - prices[i];
//         if(sub > profit){
//           profit = sub;
//         }
//       }
//     }
//
//     return profit > 0? profit : 0;
//   }
  int maxProfit(List<int> prices) {
    int left = 0; // Buy
    int right = 1; // Sell
    int maxProfit = 0;

    while (right < prices.length) {
      int currentProfit = prices[right] - prices[left]; // Current profit calculation

      if (prices[left] < prices[right]) {
        maxProfit = currentProfit > maxProfit ? currentProfit : maxProfit; // Update max profit
      } else {
        left = right; // Update buy index to the current sell price
      }
      right++; // Move to the next selling price
    }

    return maxProfit; // Return the maximum profit
  }

}

void main() {
  var solution = Solution();
  int res = solution.maxProfit( [2,4,1]);
  print(res);
}