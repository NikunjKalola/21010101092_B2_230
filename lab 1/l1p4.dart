// Write a dart code to find the percentage of 5 subjects
import 'dart:io';

void main(List<String> args) {
  print("enter marks of sub 1:");
  double m1 = double.parse(stdin.readLineSync()!);
  print("enter marks of sub 2:");
  double m2 = double.parse(stdin.readLineSync()!);
  print("enter marks of sub 3:");
  double m3 = double.parse(stdin.readLineSync()!);
  print("enter marks of sub 4:");
  double m4 = double.parse(stdin.readLineSync()!);
  print("enter marks of sub 5:");
  double m5 = double.parse(stdin.readLineSync()!);

  double per = (m1 + m2 + m3 + m4 + m5) / 5;
  print("percentege is:$per%");
}
