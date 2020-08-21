import 'package:flutter/material.dart';
import 'quote.dart';
void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<String> qotes = [
    'mi nombre es',
    'osmar alvarez',
    'y mi correo es fosmaralvarez@gmail.com'
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awasome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: qotes.map((qote) => Text(qote)).toList(),
      ),
    );
  }
}
