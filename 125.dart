// valid palindrome
class Solution {
  bool isPalindrome(String s) {
    int first = 0;
    int last = s.length-1;

    while (first < last) {
        while (first<last && !s[first].contains(RegExp(r'[a-zA-Z0-9]'))) {
            first++;
        }
        while (first<last && !s[last].contains(RegExp(r'[a-zA-Z0-9]'))) {
            last--;
        }
        if (s[first].toLowerCase() != s[last].toLowerCase()) {
            return false;
        }
        first++;
        last--; 
    }
    return true;
  }
}
