import 'package:flutter/material.dart';

class DetailMovie extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Movie'),
      ),
      body: SafeArea(
        child: Padding(
        padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Image.asset('images/spiderman_nwh.jpg',),
                ],
              ),
              Column(
                children: <Widget>[
                  Text('Spiderman ')
                ],
              )
            ],
          ),
        )

      ),
    );
  }

}