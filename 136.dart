class Solution {
  int singleNumber(List<int> nums) {
    Map<int, int> counterMap = {};

    for (int num in nums) {
        if (counterMap.containsKey(num)) {
            counterMap[num] = counterMap[num]! +1;
        } else {
            counterMap[num] = 1;
        }
    }
    
    for (int num in counterMap.keys) {
        if (counterMap[num] == 1) {
            return num;
        }
    }
    return 0;
  }
  
}
