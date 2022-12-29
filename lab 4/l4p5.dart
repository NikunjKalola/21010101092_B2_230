// Write a dart code that calculates area of circle, triangle and square using method overloading
import 'dart:io';

 void main(List<String> args) {
  var num1;
  var num2;

  print("enter s/c/t");
  var str= stdin.readLineSync()!;

  if(str=='c'){
    print("enter radius");
    num1=int.parse(stdin.readLineSync()!);
    area(num1);
    return;
  }  
  else if(str=='s'){
    print("enter length");
    num1=int.parse(stdin.readLineSync()!);
    num2=num1;
  } 
  else if(str=='t'){
    print("enter breadth");
    num1=int.parse(stdin.readLineSync()!);

    print("enter height:");
    num2=int.parse(stdin.readLineSync()!);
    num2= num2/2;
  }
  else{
    print("enter proper character");
    return;
  }
  area(num1,num2);
 }

 void area(int num1,[int? num2]){
  const double pi=3.1415;
  if(num2==null){
    print(pi*num1*num1);
  }
  else{
    print(num1*num2);
  }
 }

