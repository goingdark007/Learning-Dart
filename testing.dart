import 'dart:math';

void main() {

  print(rob([5, 10, 3, 1, 9]));


}

int rob(List<int> moneys){

  int n = moneys.length;

  if(n == 0) return 0;
  if(n == 1) return moneys[0];


  List<int> dp = List.filled(n, 0);

  dp[0] = moneys[0];
  dp[1] = max(dp[0], dp[1]);

  for(int i = 2; i < n; i++){
    dp[i] = max(dp[i-1], moneys[i] + dp[i-2]);
  }

  return dp[n - 1];

}