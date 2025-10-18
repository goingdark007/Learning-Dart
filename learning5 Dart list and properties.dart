void main () {

  List<int> numbers = [1, 2, 3];

  List<String> fruits = ['mango', 'apple', 'banana'];

  print(numbers.length); // .length shows the length of the list

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

  List<int> fixedList = List<int>.filled(3, 0);
  // .filled() limits list range and tells it to replace the empty places with 0

  /// Updating the fixed list with [1, 2] and empty place will be 0
  int j = 1;

  for(int i = 0; i < 2; i++){

    fixedList[i] = j;
    j++;

  }

  print(fixedList);

  List<int> growableList = []; // no fixed range

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

}