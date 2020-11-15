 import 'package:flutter/material.dart';
 import './quote.dart';
 class QuoteCard extends StatelessWidget {

   final Quote quote;
   QuoteCard({this.quote});

   Widget build (BuildContext context) {
      return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child  : Padding(padding: EdgeInsets.all(15),
      child: 
        Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
         Text('${quote.id}',
         style: TextStyle(
           fontSize: 10,
           color : Colors.grey[600]
         )),
         SizedBox(height: 10,),
         Text(quote.text,
         style: TextStyle(
           fontSize: 10,
           color : Colors.grey[600]
         )),
         SizedBox(height: 30,),
      ],))
    );
   }
 }