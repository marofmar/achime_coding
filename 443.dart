class Solution {
  int compress(List<String> chars) {
    int i = 0;
    int write = 0;

    while (i < chars.length) {
      String curr = chars[i];
      int count = 0;
      print("curr: $curr, start index: $i");

      while (i < chars.length && chars[i] == curr) {
        count++;
        i++;
      }
      print("curr count: $count");
      chars[write] = curr;
      write++;
      if (count > 1) {
        String countChar = count.toString();
        for (int j = 0; j < countChar.length; j++) {
          chars[write] = countChar[j];
          write++;
        }
      }
    }
    return write;
  }
}
