// dynamic programming
// Min cost climbing stairs

class Solution {
  int minCostClimbingStairs(List<int> cost) {
    int n = cost.length;
    
    int prev2 = cost[0];
    int prev1 = cost[1];
    for (int i = 2; i<n; i++){
        int current = cost[i] + min(prev1, prev2);
        prev2 = prev1;
        prev1 = current;
    }
    return min(prev1, prev2);
    
  }
}
