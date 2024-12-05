// roman to integer

class Solution {
  int romanToInt(String s) {
    Map<String, int> table = {
        "I": 1,
        "V": 5,
        "X": 10, 
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    };
    int result = 0; 
    int current = 0;
    for (int i = 0; i<s.length; i++) {
        current = table[s[i]]!;
        if (i<s.length-1 && current<table[s[i+1]]!) {
            result = result-current;
        } else {result = result+current;}
    }
    return result;
  }
  
}
