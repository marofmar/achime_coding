class Solution {
  bool uniqueOccurrences(List<int> arr) {
    Map<int, int> ht = {};
    Set<int> check = {};
    for (var i = 0; i<arr.length; i++) {
        if (ht.containsKey(arr[i])) {
            ht[arr[i]] = ht[arr[i]]! +1;
        } else {
            ht[arr[i]] = 1; 
        }
       
    } 
    check = Set.from(ht.values);
    if (check.length < ht.values.length) {
        return false;
    }
    return true;
  }
}
