// Write a dart code to print the reverse string.
import 'dart:io';

void main() {

  print("enter a string");
 String srt=stdin.readLineSync()!;

  String reverse='';
  
  for(int i=srt.length -1;i>=0;i--){
    reverse=reverse+srt[i];
  }

  print(reverse);

 
}