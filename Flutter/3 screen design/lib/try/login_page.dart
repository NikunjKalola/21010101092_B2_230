import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  final userController = new TextEditingController();
  final passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Crud'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(controller: userController,decoration: InputDecoration(
            hintText: 'enter user'
          ),),
          TextField(controller: passwordController,decoration: InputDecoration(
            hintText: 'enter password'
          ),),
          ElevatedButton(onPressed: (){}, child: Text('Login'))
        ],
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

}