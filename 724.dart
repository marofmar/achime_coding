class Solution {
  int pivotIndex(List<int> nums) {
    var totalSum = nums.reduce((a,b) => a+b);
    int leftSum = 0;

    for (var i=0; i<nums.length; i++) {
        if (leftSum == totalSum-leftSum-nums[i]) {
            return i;
        } 
        leftSum+=nums[i];
    }
    return -1;
  }
}
