void main () {

  // Arithmetic operators

  int a = 5 , b = 9;

  print('Addition ${a + b}');

  print('Substraction ${a - b}');

  print('Multiplication ${a * b}');

  print('Division ${a / b}');

  print('Remainder ${a % b}');

  // Relational operators

  print('a is equal to b  ${a == b}');

  print('a is not equal to b ${a != b}');

  print('a is greater than b ${a > b}');

  print('a is less than b ${a < b}');

  // Logical operators

  bool x = true , y = false;

  print('x and y ${x && y}');

  print('x or y ${x || y}');

  print('not x ${ !x }');

  // Unary operators

  int v = 10;

  int c = -v;

  v++; // v + 1

  c--; // c -1

  print(v);

  print(c);

}