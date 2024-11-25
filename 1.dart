//two sum
class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> table = {};  // comple: index
    
    for (int i = 0; i<nums.length; i++) {
        int comple = target-nums[i];
        if (table.containsKey(comple)) {
            return [table[comple]!, i];
        } else {
            table[nums[i]] = i; 
        }
    }
    return [];
}
}
