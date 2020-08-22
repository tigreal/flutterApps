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
    Quote(author: 'osmar wilde', text: 'lorem ipsum de ejemplo'),
    Quote(author: 'osmar wilde', text: 'lorem ipsum de '),
    Quote(author: 'osmar wilde', text: 'lorem ipsum de ejemplo santos protones'),
  ];

  Widget quoteTemplate(quote) {
    return QuoteCard(quote);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awasome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(children: qotes.map((qote) => quoteTemplate(qote)).toList()),
    );
  }
}

class QuoteCard extends StatelessWidget {
final Quote quote;
QuoteCard(this.quote);
  @override
  Widget build(BuildContext context) {
    return Card(margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                  color: Colors.grey[600], fontSize: 15.0, letterSpacing: 1.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              quote.author,
              style: TextStyle(
                  color: Colors.grey[800], fontSize: 10.0, letterSpacing: 1.0),
            ),
          ],
        ),
      ),
    );
  }
}
