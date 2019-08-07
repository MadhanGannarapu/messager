import 'package:app1/screens/contact.dart';
import 'package:flutter/material.dart';
import '../models/users.dart';

class UsersListScreen extends StatefulWidget {
  @override
  _UsersListScreenState createState() => _UsersListScreenState();
}

class _UsersListScreenState extends State<UsersListScreen> {
  final List<Users> usersList = [
    Users(id: 'u1', name: 'Madhan', phoneNumber: 9963677093),
    Users(id: 'u2', name: 'Srihari', phoneNumber: 9963677094),
    Users(id: 'u3', name: 'Subbu', phoneNumber: 9963677095),
  ];
  final List<Users> newUsers = [];

  selectedRecipents(BuildContext context, String userId, String userName) {
    final newTx = Users(id: userId, name: userName);

    final x = newUsers.where((test) {
      return test.id == userId;
    });

    if (x.length == 0) {
      print(x.length);
      print('no data found');
      setState(() {
        print(newTx);
        newUsers.add(newTx);
      });
    } else {
      setState(() {
        newUsers.removeWhere((tx) {
          print(tx);
          print(newUsers.length);
          return tx.id == userId;
        });
      });
    }
  }

  selectAllRecipents(BuildContext context) {
    print(usersList.length);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                child: Text(
                  'SELECT ALL',
                  style: TextStyle(color: Colors.red),
                ),
                onPressed: () {
                  print(usersList.length);
                },
              ),
              FlatButton.icon(
                icon: Icon(Icons.radio_button_unchecked),
                onPressed: () => selectAllRecipents(context),
                label: Text(''),
              ),
            ],
          ),
        ),
        Container(
            height: 300,
            padding: EdgeInsets.all(20),
            child: ListView.builder(
              itemCount: usersList.length,
              itemBuilder: (ctx, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: FittedBox(
                          child: Text(usersList[index]
                              .name
                              .substring(0, 1)
                              .toUpperCase()),
                        ),
                      ),
                    ),
                    title: Text(usersList[index].name),
                    subtitle: Text(usersList[index].phoneNumber.toString()),
                    trailing: FlatButton.icon(
                      icon: Icon(Icons.radio_button_unchecked),
                      onPressed: () => selectedRecipents(
                          context, usersList[index].id, usersList[index].name),
                      label: Text(''),
                    ),
                  ),
                );
              },
            )),
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Text('${newUsers.length.toString()} Selected'),
              ListView.builder(
                shrinkWrap: true,
                itemCount: newUsers.length,
                itemBuilder: (ctx, index) {
                  return Text(newUsers[index].name);
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
