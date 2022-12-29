import 'dart:io';

void main(){
  print("enter p :");
  var p=int.parse(stdin.readLineSync()!);

  print("enter r :");
  var r=int.parse(stdin.readLineSync()!);

  print("enter n :");
  var n=int.parse(stdin.readLineSync()!);

  si(p,r,n);
}


void si(int p,int r,int n){
   print((p*r*n)/100);

}
