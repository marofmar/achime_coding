class Solution {
  String reverseWords(String s) {
    List<String> rev_words = s.split(' ').reversed.toList();
    List<String> result = [];
    for (String w in rev_words) {
        if (w != '' && w != ' ' ) {
            w = w.replaceAll(' ' , '');
            result.add(w);
        }
    }
    return result.join(" ");
  }
}
