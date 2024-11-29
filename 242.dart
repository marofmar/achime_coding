// valid anagram
// 1. 정렬해서 풀기. cascade operator
class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) {
        return false;
    } 
    List<String> sortedS = s.split('')..sort();
    List<String> sortedT = t.split('')..sort();

    return sortedS.join() == sortedT.join();
  }
}
