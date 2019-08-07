import 'package:app1/models/labels.dart';
import 'package:flutter/material.dart';

class LabelsScreen extends StatelessWidget {
  final List<Labels> labelsData = [
    Labels(
        id: 'l1',
        label: '#contact.firstname',
        content: 'the recipients first name'),
    Labels(
        id: 'l1', label: '#my.signature', content: 'the recipients first name'),
    Labels(
        id: 'l1',
        label: '#contact.firstname',
        content: 'the recipients first name'),
    Labels(
        id: 'l1',
        label: '#contact.firstname',
        content: 'the recipients first name')
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: labelsData.length,
          itemBuilder: (ctx, index) {
            return Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      labelsData[index].label,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('|'),
                    Text(labelsData[index].content),
                  ],
                ),
                Divider(),
              ],
            );

            // Card(
            //   elevation: 5,
            //   child: ListTile(

            //     leading: Text(labelsData[index].label),
            //     title: Text(labelsData[index].content),

            //   ),
            // );
          },
        ));
  }
}
