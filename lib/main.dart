import 'package:flutter/material.dart';
import 'quote.dart';
import 'quotecard.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text: 'Over joy for the', author:'Lord grace'),
    Quote(text: 'We are what the Lord has made for his greatness', author: 'GOd'),
    Quote(text: 'I choose Jesus the', author: 'king of kings and jehovah')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
          })).toList(),
      ),
    );
  }
}



