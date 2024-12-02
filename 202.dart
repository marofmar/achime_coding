// happy number

class Solution {
  bool isHappy(int n) {
    Set<int> old = {};  // 이미 나온 숫자
    while (n != 1 && !old.contains(n)) {
        old.add(n);  // 현재 숫자를 old에 추가
        n = getSumOfSquares(n);  // 각 자리 숫자 제곱의 합 계산
    }

    return n == 1;
  }
  int getSumOfSquares(int num) {
    int sum = 0;
    while (num > 0) {
        int digit = num%10; // 마지막 자리 숫자
        sum += digit*digit; // 제곱 더해줌
        num ~/=10; // 마지막 자리 제거 (정수 나눗셈)
    }
    return sum;
  }
}
