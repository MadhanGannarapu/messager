import 'package:app1/screens/usersList_screen.dart';
import 'package:flutter/rendering.dart';

import './screens/sendMessagesScreen.dart';
import 'package:flutter/material.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              child: Text(
                'RECENT',
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {},
            ),
            FlatButton(
              child: Text(
                'TEMPLATES',
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {},
            ),
            FlatButton(
              child: Text(
                'LABELS',
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
      body: Center(


        // child: UsersListScreen(),

        child: RaisedButton(
          child: Text('send Message'),
          disabledColor: Colors.white,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SendMessagesScreen()),
            );
          },
        ),
      ),
    );
  }
}
