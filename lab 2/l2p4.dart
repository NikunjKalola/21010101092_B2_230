// Write a dart code to read marks of five subjects. Calculate percentage and print class
// accordingly. Fail below 35, Pass Class between 35 to 45, Second Class between 45 to 60, First
// Class between 60 to 70, Distinction if more than 70.
import 'dart:io';
void main(List<String> args) {
  print("enter mark of sub 1:");
  double m1=double.parse(stdin.readLineSync()!);
  print("enter mark of sub 2:");
  double m2=double.parse(stdin.readLineSync()!);
  print("enter mark of sub 3:");
  double m3=double.parse(stdin.readLineSync()!);
  print("enter mark of sub 4:");
  double m4=double.parse(stdin.readLineSync()!);
  print("enter mark of sub 5:");
  double m5=double.parse(stdin.readLineSync()!); 

  double per=(m1+m2+m3+m4+m5)/5;

  print("your per is: $per");

  if(per<35){
    print("your per is: $per% and you are failed");
  }
  else if(per>=35 && per<45){
     print("your per is: $per% and you are on pass class");
  }
  else if(per>=45 && per<60){
     print("your per is: $per% and you are on second class");
  }
   else if(per>=60 && per<70){
     print("your per is: $per% and you are on first class");
  }
  else if(per>=70){
     print("your per is: $per% and you are on distinction class");
  }
}