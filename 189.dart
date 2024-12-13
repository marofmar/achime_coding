// 회전된 위치 계산 (i+k)%n..
class Solution {
  void rotate(List<int> nums, int k) {
    int n = nums.length;
    k%=n;
    List<int> result = List.filled(n, 0);
    for (int i=0; i<n; i++) {
        int newIdx = (i+k)%n;
        result[newIdx] = nums[i];
    }
    for (int i = 0; i<n; i++) {
        nums[i] = result[i];
    }
  }
}
