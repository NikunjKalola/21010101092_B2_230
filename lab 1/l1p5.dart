// Write a dart code that reads a number in meters,
// converts it to feet, and displays the result

import 'dart:io';

void main(List<String> args) {
  print("enter number in meter:");
  double met = double.parse(stdin.readLineSync()!);

  double feet = (met * 3.28084);
  print("answer in feet is:$feet");
}
