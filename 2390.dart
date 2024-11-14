// Removing Stars From a String

//1. List
class Solution {
  String removeStars(String s) {
    List<String> tmp = s.split('');
    List<String> result = [];
    for (var i=0; i<tmp.length; i++) {
        if (tmp[i] != "*") {
            result.add(tmp[i]);
        } else {result.removeLast();}
    }
    return result.join('');
  }
}

//2. Stack
class Solution {
  String removeStars(String s) {
    List<String> result = [];
    for (var i =0; i<s.length; i++){
        if(s[i]!="*") {
            result.add(s[i]);
        } else {
            result.removeLast();
        }
    }
    return result.join('');
}
}

// 스택으로 푸는게 훨신 빠름. 
