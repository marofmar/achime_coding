class Solution {
  bool isIsomorphic(String s, String t) {
    if (s.length != t.length) {
        return false;
    } else {
        Map<String, String> st = {};
        Map<String, String> ts = {};

        for (int i = 0 ; i<s.length ; i++) {
            String charS = s[i];
            String charT = t[i];
            // s->t        
            if (st.containsKey(charS)) {
                if (st[charS] != charT) {
                    return false;
                }
            } else {
                st[charS] = charT;
            }

            // t->s
            if (ts.containsKey(charT)) {
                if (ts[charT] != charS) {
                    return false;
                }
            } else {
                ts[charT] = charS;
            }
        }
        return true;


    }
  }
}
