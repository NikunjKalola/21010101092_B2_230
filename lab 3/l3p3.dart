import 'dart:io';
void main(List<String> args) {
  print("enter number");
  int n=int.parse(stdin.readLineSync()!);
int flag=1;
  for(int i=2;i<=n/2;i++){
    if(i%2==0){
      flag=0;
    }
    else{
      flag=1;
    }
  }

  if(flag==1){
    print("$n is a prime number");
  }
  else{
    print("$n is not prime number");
  }


}