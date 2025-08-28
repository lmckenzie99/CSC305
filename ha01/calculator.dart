import 'dart:io';

void main() {
  print('Enter the first integer: ');
  int? num1 = int.parse(stdin.readLineSync()!);
  print('Enter the second integer: ');
  int? num2 = int.parse(stdin.readLineSync()!);

  int sum = num1 + num2;
  int diff = num1 - num2;
  int prod = num1 * num2;
  int div = num1 ~/ num2;
  int mod = num1 % num2;
  print("Addition: ${sum}");
  print("Subtraction: ${diff}");
  print("Multiplication: ${prod}");
  print("Division: ${div}");
  print("Modulus: ${mod}");
  if (num1 > num2) {
  print("${num1} is greater than ${num2}");
  }else{
  print("${num2} is greater than ${num1}");
  }
}
