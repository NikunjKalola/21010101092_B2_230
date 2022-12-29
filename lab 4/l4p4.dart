// Write a dart code to accept a number and check whether the number is prime or not. Use
// method name check (int n). The method returns 1, if the number is prime otherwise, it returns 0.

import 'dart:io';

void main(){

print("enter 1 number :");
  var n1=int.parse(stdin.readLineSync()!);
  print("1 if not prime o if prime");

print(prime(n1));
prime_named(n1: n1);
}

int prime(int n1){
  for(var i=2;i<=n1;i++){
    if(n1 % i==0){
      return 1;
    }
  }
  return 0;
}
int prime_named({required int n1}){
  for(var i=2;i<=n1;i++){
    if(n1 % i==0){
      return 1;
    }
  }
  return 0;
}