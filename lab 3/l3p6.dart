// Write a dart code program to calculate the sum of all positive even numbers and the sum of all
// negative odd numbers from a set of numbers. You can enter 0 (zero) to quit the program and
// thus it displays the result.
import 'dart:io';

void main(){

  print("enter 0 for quit :");
  var num1=int.parse(stdin.readLineSync()!);

  var result_odd =0;
  var result_even=0;

  while(num1!=0){
    num1=int.parse(stdin.readLineSync()!);
    if(num1>0 && num1%2==0){
      result_even=result_even+num1;
    }

    if(num1<0 && num1%2 !=0){
      result_odd=result_odd+num1;
    }
    if(num1 == 0){
      break;
    }
  }
    print("sum of odd -ve is $result_odd \nsum of even +ve is $result_even");
    
}