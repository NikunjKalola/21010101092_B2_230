// Write a dart code to count the number of even or odd numbers from an array of n numbers.

import 'dart:io';

void main(List<String> args) {
 
  var lst = [];
  int even_count=0;
  int odd_count=0;
  for(int i=0;i<=5;i++){
   int a=int.parse(stdin.readLineSync()!);
    lst.insert(i, a);
  }

  for(int i=0;i<lst.length;i++){

    if (lst[i]%2==0){
      even_count=even_count+1;
    }
    else{
     
      odd_count=odd_count+1;
    
    }
  }
  print("odd number:$odd_count");
  print("even number:$even_count");
}