// contains duplicate 2
class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
    Map<int, int> map = {};
    for (int i = 0; i<nums.length; i++) {
        int num = nums[i];

        if (map.containsKey(num)) {
            int prevIndex = map[num]!;

            if ((i-prevIndex) <=k) {
                return true;
            }
        }
        map[num]= i;
    }
    return false;
  } 
}
