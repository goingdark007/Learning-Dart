void main () {

  /// const executes on compile time and once assigned value can't be changed
  /// even in run time like universal truth
  const double pi2 = 3.1416;
  print(pi2);

  /// final executes on run time and value may change at different run times
  // like DateTime.now() gets current time which changes after each run time
  // but in that run time value won't be changed
  final DateTime currentTime = DateTime.now();
  print(currentTime);

}