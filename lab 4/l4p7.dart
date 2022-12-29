// Write a dart code to accept n numbers in an array. Display the sum of all the numbers which are
// divisible by either 3 or 5.

import 'dart:io';

void main(List<String> args) {
 
  var lst = [];
  num sum=0;
  for(int i=0;i<=5;i++){
   int a=int.parse(stdin.readLineSync()!);
    lst.insert(i, a);
  }
  for(int i=0;i<lst.length;i++){

    if (lst[i]%3==0 || lst[i]%5==0){
       sum= sum + lst[i];
    }
    
  }
  print("sum of number that is divisible by 3 or 5 is:$sum");
}