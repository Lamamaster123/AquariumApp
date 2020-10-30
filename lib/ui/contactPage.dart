import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contact Page'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 40),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '   Contact Us!',
                      style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54),
                    ),

                  ),

                  Row(children: <Widget>[
                    Expanded(
                      child: new Container(
                          margin: const EdgeInsets.only(left: 30.0, right: 300.0),
                          child: Divider(
                            color: Colors.black54,
                            height: 36,
                            thickness: 1,
                          )),
                    ),
                  ]),

                  //tank size and shape
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '     Email: amalbjacob@gmail.com',
                      style: TextStyle(
                          fontSize:18.0,
                          color: Colors.black54),
                    ),

                  ),

                  //planted level
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '     Phone: 425-626-9063',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black54),
                    ),

                  ),

                  

                ]
            )
        )
    );
  }
}
