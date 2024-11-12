/// Move Zeroes
class Solution {
  void moveZeroes(List<int> nums) {
    int lastNonZeroFoundAt = 0;
    for (int cursor = 0; cursor<nums.length; cursor++) {
        if (nums[cursor] != 0) {
            int temp = nums[lastNonZeroFoundAt];
            nums[lastNonZeroFoundAt] = nums[cursor];
            nums[cursor] = temp;
            lastNonZeroFoundAt++;
        }
    }
  } 
} 
