// 자기를 제외한 나머지들의 곱을 리스트로 반환하는 문제

class Solution {
  List<int> productExceptSelf(List<int> nums) {
    int l = 1;
    int r = 1;
    int n = nums.length;
    List<int> result = List.filled(n,1);

    for (int i = 0; i < n; i++){
        result[i] *= l;
        l *= nums[i];

        result[n-1-i] *= r;
        r*=nums[n-1-i];
    }
    return result;

  }
}
