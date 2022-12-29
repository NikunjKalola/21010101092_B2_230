// Write a dart code to find the maximum number from two numbers using this method.

import 'dart:io';

void main(List<String> args) {
  int a=int.parse(stdin.readLineSync()!);
  int b=int.parse(stdin.readLineSync()!);

  Max m1=Max(a,b);
  m1.maxi(a,b);
}
 
class Max{
  var x;
  var y;

  Max(x,y){
    this.x=x;
    this.y=y;
  }

  void maxi(int a,int b){
    if(a>b){
      print("$a is greater number");
    }
    else{
      print("$b is gretaer number");
    }
  }

}






// import 'dart:io';

// void main(List<String> args) {
//   int a=int.parse(stdin.readLineSync()!);
//   int b=int.parse(stdin.readLineSync()!);

//   Max m1=Max(a,b);
//   m1.maxi(a,b,(val){
//     print(val);
//   });
// }

// class Max{
//   var x;
//   var y;

//   Max(x,y){
//     this.x=x;
//     this.y=y;
//   }

//   void maxi(int a,int b,Function function){
//     if(a>b){
//       function("$a is greater number");
//     }
//     else{
//       function("$b is gretaer number");
//     }
//   }

// }