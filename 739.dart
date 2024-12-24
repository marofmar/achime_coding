class Solution {
  List<int> dailyTemperatures(List<int> temperatures) {
    int n = temperatures.length;
    List<int> result = List.filled(n, 0);
    List<int> stack = [];

    for (int i = 0; i<n; i++ ){
        while (stack.isNotEmpty && temperatures[i]>temperatures[stack.last]) {
            int prevIndex = stack.removeLast();
            result[prevIndex] = i-prevIndex;
        }
        stack.add(i);
    }
    return result;
  }
}
