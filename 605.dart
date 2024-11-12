class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    for (int i = 0; i < flowerbed.length; i++) {
        if (flowerbed[i] == 0 && 
        (i==0 || flowerbed[i-1]==0) && 
        (i==flowerbed.length-1||flowerbed[i+1]==0)) {
            flowerbed[i] = 1;
            n=n-1;

            if (n==0) {
                return true;
            }
        }
    } if (n>0) return false; else return true;
  } 
}
