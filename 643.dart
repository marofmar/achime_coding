class Solution {
  double findMaxAverage(List<int> nums, int k) {
    int tempSum = 0;
    for (int i = 0; i<k; i++) {
        tempSum+=nums[i];
    } 
    int maxSum = tempSum;
    for (var i=k; i<nums.length; i++) {
        tempSum = tempSum-nums[i-k]+nums[i];
        if (tempSum > maxSum) {
            maxSum = tempSum;
        }
    } return maxSum / k;
  } 
}
