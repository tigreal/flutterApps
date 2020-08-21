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
  List<Quote> qotes = [
    Quote(author: 'osmar wilde',text: 'lorem ipsum de ejemplo'),
  Quote(author: 'osmar wilde',text: 'lorem ipsum de ejemplo'),
  Quote(author: 'osmar wilde',text: 'lorem ipsum de ejemplo'),
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
        children: qotes.map((qote) => Text('${qote.text}-${qote.author}')).toList()
      ),
    );
  }
}
