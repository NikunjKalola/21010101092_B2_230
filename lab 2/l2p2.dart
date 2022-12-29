// Write a dart code to perform Addition, Subtraction, Multiplication, Division based on user choice
// using if, if..else..if, & switch.

import 'dart:io';

void main(List<String> args) {
  print("enter first number");
  int a=int.parse(stdin.readLineSync()!);
  print("enter second number");
  int b=int.parse(stdin.readLineSync()!);

  print("1 for addition\n2 for subtraction\n3 for multiplication\n4 for division");
  int c=int.parse(stdin.readLineSync()!);

  // if(c==1){
  //   print("addition is ${a+b}");
  // }
  // else if(c==2){
  //   print("subtraction is ${a-b}");
  // }
  // else if(c==3){
  //   print("multiplication is ${a*b}");
  // }
  // else{
  //   print("division is ${a/b}");
  // }

  switch(c){
    case 1:{
      print("addition is ${a+b}");
    }break;
    case 2:{
      print("subtraction is ${a-b}");
    }break;
    case 3:{
      print("multiplication is ${a*b}");
    }break;
    case 4:{
      print("division is ${a/b}");
    }break;
    default:{
      print("enter valid number");
    }break;
  }

}