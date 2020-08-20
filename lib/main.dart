import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: NinjaCard(),
    ));

class NinjaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text(
          'Ninja ID Card',
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(40.0, 30.0, 40.0, 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: TextStyle(color: Colors.grey[400], fontSize: 20.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('CHun-Li',
                style: TextStyle(color: Colors.amber, fontSize: 25.0)),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(color: Colors.grey[400], fontSize: 20.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('8', style: TextStyle(color: Colors.amber, fontSize: 25.0)),
          ],
        ),
      ),
    );
  }
}
