void main() {

  final List<int> list1 = [1, 2, 3, 4];

  final copiedList = [...list1];
  print(copiedList);

  final list2 = [
    ...list1.map((e) => e +1)
  ];

  print(list2);

}