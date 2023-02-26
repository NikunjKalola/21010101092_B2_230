import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jhon_doe_3_design/Page3.dart';
import 'package:jhon_doe_3_design/page1.dart';
import 'package:jhon_doe_3_design/page2.dart';

class Drawer1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:  Container(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: [
                  const Text('Nikunj Kalola'),
                  Container(
                    margin: const EdgeInsets.only(top: 21),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.png')
                      ,radius: 36,
                    ),
                  ),
                ],
              ),
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Page1()));
              },
            ),
            ListTile(
              title: const Text('Detail'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Page2()));                },
            ),
            ListTile(
              title: const Text('Graph'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Page3()));                },
            ),
          ],
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

}