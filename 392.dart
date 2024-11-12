/// Is Subsequence
class Solution {
  bool isSubsequence(String s, String t) {
    int l = 0 ;
    for (int r = 0; r<t.length; r++) {
        if (l < s.length && s[l] == t[r]){
            l++;
        }
    } if (l == s.length) {
        return true; 
    } else {
        return false;
    }
  } 
}
