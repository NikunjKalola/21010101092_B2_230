// Write a dart code to print a given number in reverse order.
 import 'dart:io';

void main() {

  print("enter a number");
  var num=int.parse(stdin.readLineSync()!);

  var reverse=0;

  while(num > 0){
    reverse=(reverse * 10)+ num % 10;
    num=num ~/ 10;
  }
  print("reverse noumber is $reverse");
  
}