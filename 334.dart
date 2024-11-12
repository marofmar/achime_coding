class Solution {
  bool increasingTriplet(List<int> nums) {
    int? first = null;
    int? second = null;

    for (int num in nums) {
        if (first == null || num <= first) {
            first = num;
        } else if (second == null || num <= second ) {
            second = num;
        } else {
            return true;
        }
    }// for loop
    return false;
  }
}
