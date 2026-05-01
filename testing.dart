void main () {

  List<int> list4 = [1, 3, 4, 5];

  final total = list4.fold<int>(0, (previousValue, element ) => previousValue + element);
  print(total);

}