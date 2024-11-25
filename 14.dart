// Longest common prefix

class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) {
        return "";
    }
    String bench = strs[0];
    for (int i = 1; i<strs.length; i++) {
        while (!strs[i].startsWith(bench)) {
            bench = bench.substring(0, bench.length-1);

            if (bench.isEmpty) {
                return "";
            }
        }
    }
    return bench;
  }
  
}
