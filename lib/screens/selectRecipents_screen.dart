import 'package:app1/screens/usersList_screen.dart';
import 'package:flutter/material.dart';

class SelectRecipents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select recipents'),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'DONE',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (value) {},
                  // controller: editingController,
                  decoration: InputDecoration(
                      // labelText: "Search for contacts",
                      hintText: "Search for contacts",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)))),
                ),
              ),
            ]),
          ),
          UsersListScreen()
          // Container(
          //   child: UsersListScreen(),
          // )
        ],
      ),
    );
  }
}
