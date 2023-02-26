import 'package:flutter/material.dart';
import 'package:jhon_doe_3_design/try/database.dart';

class ScreenMain extends StatefulWidget{
  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  MyDatabase db = MyDatabase();
  void initState(){
    super.initState();
    db.initDatabase().then((value) => print('database successfully initialized'));
    db.getDataFromUserTable().then((value) => print('hello'));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User List'),),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}