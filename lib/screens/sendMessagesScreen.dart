import 'package:app1/screens/labels_screen.dart';
import 'package:app1/screens/selectRecipents_screen.dart';
import 'package:flutter/material.dart';

class SendMessagesScreen extends StatelessWidget {
  void openLabel(BuildContext ctx) {
    print('object');
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return LabelsScreen();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Text('Broadcast Message'),
            actions: <Widget>[
              FlatButton(
                child: Text('SEND'),
                onPressed: null,
              ),
            ],
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
                  onPressed: () {
                    print('object');
                    // AlertDialog(title: Text('alerted!'),);
                  },
                ),
                FlatButton(
                  child: Text(
                    'LABELS',
                    style: TextStyle(color: Colors.red),
                  ),
                  onPressed: () => openLabel(context),
                )
              ],
            ),
          ),
          body: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      child: Text(
                        'SELECT RECIPENTS',
                        style: TextStyle(color: Colors.red),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelectRecipents()),
                        );
                        // showModalBottomSheet(
                        //   context: context,
                        //   builder: (_) {
                        //     return LabelsScreen();
                        //   },
                        // );
                      },
                    ),
                    FlatButton(
                      child: Text('NONE'),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: TextField(
                  maxLines: 5,
                  decoration:
                      InputDecoration(labelText: 'Write a message here..'),
                ),
              )
            ],
          )),
    );
  }
}
