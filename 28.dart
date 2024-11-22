// remove duplicates and return the number of the unique

class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) return 0;
    int k = 1;
    for (int i = 0 ; i<nums.length-1;i++) {
        for (int j = i+1 ; j<nums.length; j++) {
            if (nums[j] != nums[i]) {
                nums[k] = nums[j];  
                k = k+1;
                i = j-1;
                break;
            } 
        }
    }
    return k;
  }
}
