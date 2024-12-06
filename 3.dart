// longest substring without repeating characters

class Solution {
  int lengthOfLongestSubstring(String s) {
    // counter 
    int counter = 0;
    int start = 0;
    Set<String> charSet = {};
    // letters, symbols and spaces...
    for (int i =0; i<s.length; i++) {
        while (charSet.contains(s[i])) {
            charSet.remove(s[start]);
            start++;
        }
        charSet.add(s[i]);

        int len = i-start+1;

        counter = counter < len? len : counter;
    }
    return counter;
  }
}
