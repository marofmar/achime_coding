class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    Map<String, List<String>> group = {};
    for (var str in strs) {
        var filled = List.filled(26,0);
        for (int i = 0; i<str.length; i++) {
            filled[str.codeUnitAt(i)-'a'.codeUnitAt(0)]++;
        }
        String key = filled.join('#');
        if (!group.containsKey(key)) {
            group[key] = [];
        }
        group[key]!.add(str);
    }
    return group.values.toList();
    
  }
}
// group anagram
