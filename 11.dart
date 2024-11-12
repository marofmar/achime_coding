import 'dart:math';
class Solution {
  int maxArea(List<int> height) {
    int maxArea;
    int left = 0;
    int right = height.length-1;

    maxArea = (right-left) * min(height[right], height[left]);

    while (left<right) {
        int temp = (right-left) * min(height[right], height[left]);
        maxArea = max(temp, maxArea);

        if (height[left]<height[right]) {
            left++;
        } else {
            right--;
        }
    }
    return maxArea;



  }
}
/*
24-11-08 아침에 코딩 끄적
처음에는 left, right 포인터 두고, 순회하면서 용량값들을 모조리 다 리스트에 넣은 뒤, 맨 마지막에 해당 리스트 안의 맥스 용량을 구하는 것을 생각함.
하지만 너무 복잡함. 생각만 해도 너무 복잡함.

두 개의 포인터를 두고, 이 경우 for loop 보다는 while loop 
특정 범위나 정해진 횟수를 순회할 때는 for loop인데, 동적으로 뭔가 움직여야 할 때에는 while loop.

조건을 우선 (left < right) 로 두고,
높이가 작은 쪽의 포인터를 이동시킴.
left 포인터라면 우측으로, right 포인터라면 왼쪽으로.

오늘도 재미있었다.
*/
