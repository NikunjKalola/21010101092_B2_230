// Write a dart code to find out the largest number from three numbers without using Logical
// Operator.
import 'dart:io';
void main(List<String> args) {
   print("enter first number");
  int a=int.parse(stdin.readLineSync()!);
  print("enter second number");
  int b=int.parse(stdin.readLineSync()!);
  print("enter third number");
  int c=int.parse(stdin.readLineSync()!);

  if(a>b){
    if(a>c){
      print("$a is the greatest number of all");
    }
    else{
      print("$c is the greatest number of all");
    }
  }
  else{
    if(b>c){
       print("$b is the greatest number of all");
    }
    else{
      print("$c is the greatest number of all");
    }
  }

}