import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> qotes = [
    Quote(author: 'osmar wilde', text: 'lorem ipsum de ejemplo'),
    Quote(author: 'osmar wilde', text: 'lorem ipsum de '),
    Quote(
        author: 'osmar wilde', text: 'lorem ipsum de ejemplo santos protones'),
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
          children: qotes
              .map((qote) => QuoteCard(
                    quote: qote,
                  ))
              .toList()),
    );
  }
}



