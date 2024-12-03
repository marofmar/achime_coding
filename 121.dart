// best time to buy and sell stock
class Solution {
  int maxProfit(List<int> prices) {
    if (prices.isEmpty) return 0;

    int buy = prices[0];
    int max = 0;

    for (int i = 1; i<prices.length; i++) {
        if (prices[i] < buy) {
            buy = prices[i];
        }
        if ((-buy+prices[i])>max) {
            max = -buy+prices[i];
        } 
    }
    return max;

  }
}
