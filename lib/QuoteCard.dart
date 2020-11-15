 import 'package:flutter/material.dart';
 import './quote.dart';
 class QuoteCard extends StatelessWidget {

   final Quote quote;
   final Function delete;
   QuoteCard({this.quote,this.delete});

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
         FlatButton.icon(
         onPressed: delete, 
         padding: EdgeInsets.all(5),
         label : Text('delete'),
         icon: Icon(Icons.assignment_return_rounded),
         )
      ],))
    );
   }
 }