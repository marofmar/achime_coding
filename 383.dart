// Ransom Note

class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    Map<String, int> note = {};
    Map<String, int> mag = {};

    for (int i = 0; i<ransomNote.length; i++) {
        String char = ransomNote[i];
        note[char] = (note[char] ?? 0) +1;
    }
    for (int j = 0; j<magazine.length; j++) {
        String tar = magazine[j];
        mag[tar] = (mag[tar]?? 0) +1;
    }

    for (String char in note.keys) {
        if (!mag.containsKey(char)|| mag[char]! < note[char]!) {
            return false;
        }
    }
    return true;
    
   

  }
}
