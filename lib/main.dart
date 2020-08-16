import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('myapp'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent[400],
      ),
      body: Row(
        children: <Widget>[
          Expanded(flex: 1, child: Image.asset('assets/clarence1.jpg')),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.deepOrangeAccent,
              child: Text('UNO'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.greenAccent,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.lightBlueAccent,
              child: Text('3'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('me presionaste');
        },
        child: Text('Click'),
        backgroundColor: Colors.greenAccent[400],
      ),
    );
  }
}
