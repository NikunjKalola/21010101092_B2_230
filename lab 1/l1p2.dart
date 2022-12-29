// Write a dart code to print the addition of 2 numbers.

import 'dart:io';

void main(List<String> args) {
  int a, b;
  print("enter first number:");
  a = int.parse(stdin.readLineSync()!);
  print("enter second number:");
  b = int.parse(stdin.readLineSync()!);

  print("the sum is:${a + b}");
}
