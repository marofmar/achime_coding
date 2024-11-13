// N-th Tribonacci Number

// 1. momoization으로 풀기
Map<int, int> memo = {};

class Solution1 {
  int tribonacci(int n) {
    if (n==0) {return 0;}
    else if (n==1 || n==2) {return 1;}
    else if (memo.containsKey(n)) {return memo[n]!;}
    memo[n] = tribonacci(n-1) + tribonacci(n-2) + tribonacci(n-3);
    return memo[n]!; 
  }
}

// 2. Dynamic programming
class Solution2 {
  int tribonacci(int n) {
    if (n==0) {return 0;}
    else if (n==1 || n==2) {return 1;}
    
    List<int> memo = List.filled(n+1, 0);
    
    memo[1] = 1;
    memo[2] = 1;

    for (int i = 3; i<=n; i++) {
        memo[i] = memo[i-1]+memo[i-2]+memo[i-3];
    }
    return memo[n];
  }
}
