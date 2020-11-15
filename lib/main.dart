import 'package:flutter/material.dart';
import './quote.dart';

void main() {
  runApp(
    MaterialApp(
      home : QuoteList()
    )
  );
}


class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  @override

  List<Quote> quotes = [
  Quote(text : "What we think, we become", id : 1 ),
  Quote(text : "Tough times never last but tough people do", id : 2 ),
  Quote(text : "Problems are not stop signs, they are guidelines", id : 1 ),

  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[150],
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: Text('Quotes List'),
      ),
      body : Column(
         mainAxisAlignment: MainAxisAlignment.start,
         children: quotes.map((item) {
          return Text('${item.text}',
          textAlign: TextAlign.right,
          );
        }).toList(),
      )
    );
  }
}
