import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TankSetupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tank Setup'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        //alignment: new FractionalOffset(10.0, 1.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 40),
              Text(
                "Let's start with the basics",
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87),
              ),
              SizedBox(height: 40),
              Text(
                "Name",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),

              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter name'
                ),
              ),
              SizedBox(height: 40),
              
              Text(
                "Size",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),

              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter size in gallons'
                ),
              ),
              SizedBox(height: 40),



      ]),
    ));
  }
}
