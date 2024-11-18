class Solution {
  List<int> countBits(int n) {
    List<int> result = List.filled(n+1, 0);

    for (int i = 0; i <=n; i++) {
        String tmp = i.toRadixString(2);
        int count = tmp.split('').where((x) => x =='1').length;
        result[i] = count;
    }
    return result;

  }
}
/*
toRadixString() 이라는 아주 편리한 함수가 있구나
*/
