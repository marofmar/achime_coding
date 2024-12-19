class Solution {
  int hIndex(List<int> citations) {
    citations.sort();
    print(citations);

    for (int i = 0; i<citations.length; i++) {
        int h = citations.length -i; 
        if (citations[i] >= h) {
            return h;
        } 
    }
    return 0;
  }
}

// h index
