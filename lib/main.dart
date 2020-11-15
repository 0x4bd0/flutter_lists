import 'package:flutter/material.dart';

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

  List<String> quotes = [
  "What we think, we become",
  "Tough times never last but tough people do",
  "Problems are not stop signs, they are guidelines"
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
          return Text(item,
          textAlign: TextAlign.right,
          );
        }).toList(),
      )
    );
  }
}
