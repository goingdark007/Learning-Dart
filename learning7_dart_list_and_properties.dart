void main () {

  List<int> numbers = [1, 2, 3];

  List<String> fruits = ['mango', 'apple', 'banana'];

  print(numbers.length); // .length shows the length of the list

  print(numbers.isEmpty); // .isEmpty checks the list is empty or not returns true or false

  print(numbers.isNotEmpty);
  // .isNotEmpty checks the list is empty or not returns true or false

  print(numbers[0]); // shows the item at index 0

  print(fruits.first); // .first shows first item in list

  print(fruits.last); // .last shows last item in list

  fruits.insert(1, 'Jackfruit'); // adds jackfruit at position 1

  print(fruits);

  fruits.insertAll(2, ['Coconut', 'Lichi']); // adds this new list at position at 2

  print(fruits);

  fruits.removeAt(2); // removes item at index 2

  print(fruits);

  fruits.remove('Jackfruit'); // removes the item jackfruit from the list
  // there is also .removeLast() and .removeFirst() to remove last and first item
  print(fruits);

  fruits[1] = 'Jackfruit'; // updates the list

  print(fruits);

  /// no fixed range, by Default its growable
  List<int> growableList = [];

  growableList.add(4); // adds 4

  growableList.add(6); // adds 6 at the last

  print(growableList);

  growableList.addAll([1,2,3]); /// .addAll([list]) to add a list in the existing list

  print(growableList);

  List<int> newList = [25,36];

  newList.insertAll(1, [14,16]); // .insertAll() adds a list at a specified index, the existing element is moved to next index

  print(newList);

  print(newList.runtimeType); // runtimeType() shows the type of elements that list takes

  newList.sort(); /// sorts the element in ascending order

  print(newList);

  newList = newList.reversed.toList(); /// sorts the element in descending order

  print(newList);

  /// .clear() removes all objects from this list; the length of the list becomes zero.
  /// The list must be growable.
  /// final numbers = <int>[1, 2, 3];
  /// numbers.clear();
  /// print(numbers.length); // 0
  /// print(numbers); // []

  newList.clear();

  print(newList);

  /// List.filled() limits list range and tells it to replace the empty places with 0
  // and creates a not growable list, like adding and removing element using
  // .add() and .remove() will cause error
  List<int> fixedList = List<int>.filled(3, 0); // [0, 0, 0]


  // Updating the fixed list with [1, 2] and empty place will be 0
  int j = 1;

  for(int i = 0; i < 2; i++){

    fixedList[i] = j;
    j++;

  }

  print(fixedList);

  /// Part-2, List.filled() also creates a list with three 0s
  List myList = List.filled(3, 0);

  print(myList); // [0, 0, 0]

  /// Nested List.filled problem
  // List.filled() copies the same reference of the inner list into every row so
  // all three rows point to hte same list object in memory
  var matrix = List.filled(3, List.filled(3, 0));

  // if we modify the second index or element of the list then all lists second
  // element changes too !!
  matrix[0][1] = 99;

  print(matrix); // [[0, 99, 0], [0, 99, 0], [0, 99, 0]]

  // we can fix this with List.generate() method calls the lambda fresh each
  // time, where each row is a brand-new List.filled() object in memory.

  var matrix2 = List.generate(
    3, (_) => List.filled(3, 0), // NEW list created for each row
  );
  matrix2[0][1] = 99;
  print(matrix2); // [[0, 99, 0], [0, 0, 0], [0, 0, 0]]  ← Only row 0 changed


  /// List copying not referring to the same memory address using [...list]
  // spread operator
  List<int> myList2 = [1, 3, 5];
  var myList3 = [...myList2];
  print(myList3);
  myList2.addAll([5,8]);
  print(myList3);

  /// Same list copying but using List.of()
  // List.of() method in Dart creates a new, growable list and initializes it
  // with the elements from a provided Iterable. It does not point to the original
  // Iterable/list in memory but only adds to the new list
  var originalList = ['a', 'b', 'c'];
  var copiedList = List.of(originalList);

  copiedList.add('d');

  print(originalList); // ['a', 'b', 'c']
  print(copiedList);   // ['a', 'b', 'c', 'd']


}