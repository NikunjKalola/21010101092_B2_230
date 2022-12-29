import 'dart:io';
void main(List<String> args) {
   print("enter first number");
  int a=int.parse(stdin.readLineSync()!);
  print("enter second number");
  int b=int.parse(stdin.readLineSync()!);
  print("enter third number");
  int c=int.parse(stdin.readLineSync()!);

  var ans=a>b?(a>c?a:c):(b>c?b:c);

  print("$ans is the greatest number of all");
}