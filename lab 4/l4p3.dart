// Write a dart code to generate a Fibonacci series of N given numbers using this method.
import 'dart:io';

void main(){

print("enter number :");
  var n1=int.parse(stdin.readLineSync()!);

  fibbonaci(n1);
  //fibbonaci_name(n1:n1);

}
void fibbonaci(n1){
  int a = 0;
  int b = 1;
  int sum=0;

  for(var i=0;i<n1;i++){
    print(a);
    sum=a+b;
    a=b;
    b=sum;
  }
}
// void fibbonaci_name({required n1}){
//   int a = 0;
//   int b = 1;
//   int sum=0;

//   for(var i=0;i<n1;i++){
//     print(a);
//     sum=a+b;
//     a=b;
//     b=sum;
//   }
// }