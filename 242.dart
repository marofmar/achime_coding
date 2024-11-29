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

// 2. 해쉬 테이블로 풀기

class Solution {
    bool isAnagram(String s, String t) {
        if (s.length != t.length) return false;

        Map<String, int> counter = {};

        for (int i = 0; i<s.length; i++) {
            String char = s[i];
            counter[char] = (counter[char] ?? 0) +1;
        }

        for (int j = 0; j<t.length; j++) {
            String char = t[j];
            if (!counter.containsKey(char) || counter[char] == 0) {
                return false;
            }
            counter[char] = counter[char]!-1;
        }
        return true;
    }
}
