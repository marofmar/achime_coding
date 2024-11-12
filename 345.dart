class Solution {
  String reverseVowels(String s) {
    Set<String> vowels = {'a','e','i','o','u','A','E','I','O','U'};
    List<String> target = s.split('');
    
    int l = 0;
    int r = target.length -1;

    while (l < r) { 
        if (!(vowels.contains(target[l]))) {
            l++;
        }
        else if (!(vowels.contains(target[r]))) {
            r--;
        } else {
            String temp = target[l];
            target[l] = target[r];
            target[r] = temp;
            l++;
            r--;
        }

    }
    return target.join(''); 
  } 
}

