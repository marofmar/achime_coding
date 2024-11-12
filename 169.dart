// Majority Element

class Solution {
  int majorityElement(List<int> nums) {
    Map<int, int> ht = {};
    for (var num in nums) {
        if (ht.containsKey(num)) {
            ht[num] = ht[num]! +1;
        } else {
            ht[num] = 1;
        }
    }
    int maxKey = nums[0];
    int maxVal = ht[maxKey]!;
    
    ht.forEach((key, value) {
        if (value > maxVal) {
            maxKey = key;
            maxVal = value;
        }
    });
    return maxKey;

  }
}

/*
해쉬 테이블을 만든다.
해쉬 테이블에서 maxValue를 가지는 maxKey를 반환한다. 

Map 같은 경우는 Iterable이 있어서, for loop으로 접근이 안되고, forEach (() {}); 이런 식으로 접근해야 한다. 
*/
