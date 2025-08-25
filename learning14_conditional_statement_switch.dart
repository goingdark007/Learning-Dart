import 'dart:io';


void main () {


  /// Switch-case
  print('Enter the day : ');
  // .toLowerCase is used to convert string to lower case & null assertion ! is
  // used to tell the method it won't be null cause .toLowerCase does not take null
  // same .toUpperCase exists too
  String? day = stdin.readLineSync()!.toLowerCase();

  switch (day){
    // we don't need break in switch
    case 'friday':
      print('Relax');
    case 'saturday':
      print('Versity');
    case 'sunday':
      print('Gym');
    case 'monday':
      print('Movie');
    // runs this if no case is matched
    default:
      print('Stay in home');
  }


  /// Mini project for season
  print('============================');
  print('Enter the number of the month : ');
  // tryParse to convert string to int safely and null assertion to tell it
  // won't be null
  int? month = int.tryParse(stdin.readLineSync()!);

  switch (month) {
    // or ||| means if one of them matches run the code
    case 5 || 6 || 7:
      print('Summer');
    case 8 || 9 || 10:
      print('Monsoon');
    case 11 || 12 || 1:
      print('Winter');
    case 2 || 3 || 4:
      print('Spring');
    default:
    print('Invalid input');
  }


}