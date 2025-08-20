void main () {

  /// Declaring the map

  Map<String, dynamic> student = { // Keys are strings and values are dynamic

    'name': 'Nazmul',

    'age': 22,

    'grade': 'A+',

    'isPassed': true

  };

  print('Student details $student');

  /// Accessing values in map

  print('Student name ${student['name']}');

  /// Updating values in map

  student['grade'] = 'A';

  print('Student grade ${student['grade']}');

  /// Adding new keys and values

  student['city'] = 'Dhaka';

  print('Student location ${student['city']}');

  student.remove('age'); // .remove() deletes key and its value

  print('Student details $student');

  /// checking keys in map

  if (student.containsKey('grade')) { // .containsKey() checks if a key is present

    print('yes');

  } else {

    print('no');

  }

  /// getting keys of the map as tuple

  print('Keys ${student.keys}'); // .keys returns keys as tuple

  /// getting values of the map as tuple

  print('Values ${student.values}'); // .values returns values as tuple

}