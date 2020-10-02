import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/custom_stuff/customButton.dart';
import 'package:test_project/model/Tank.dart';
import 'package:test_project/ui/homePage.dart';

class FishTankDetails extends StatelessWidget {
  final Tank tank;

  const FishTankDetails({Key key, this.tank}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(tank.name),
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
                  '   Specifications',
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
                  '     ${tank.size} gallon ${tank.shape.toLowerCase()}',
                  style: TextStyle(
                      fontSize:18.0,
                      color: Colors.black54),
                ),

              ),

              //planted level
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '     ${tank.plantDensity}',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black54),
                ),

              ),

              //substrate
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '     ${tank.substrate}',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black54),
                ),

              ),

              SizedBox(height: 40),

              RaisedButton(onPressed: () {debugPrint('hello');},
                padding: EdgeInsets.fromLTRB(100.0, 15.0, 100.0, 15.0),
                color: Colors.white54,
                child: Text(
                  'Edit Setup',
                  style: TextStyle(
                      fontSize: 18.0,
                      //fontWeight: FontWeight.bold,
                      color: Colors.black54),
                )
              ),

              SizedBox(height: 15),

              RaisedButton(onPressed: () {debugPrint('hello');},
                  padding: EdgeInsets.fromLTRB(108.0, 15.0, 108.0, 15.0),
                  color: Colors.white54,
                  child: Text(
                    'Edit Fish',
                    style: TextStyle(
                        fontSize: 18.0,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  )
              ),

              SizedBox(height: 15),

              RaisedButton(onPressed: () {debugPrint('hello');},
                  padding: EdgeInsets.fromLTRB(57.0, 15.0, 57.0, 15.0),
                  color: Colors.yellow,
                  child: Text(
                    'Issues and Warnings',
                    style: TextStyle(
                        fontSize: 18.0,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  )
              )


            ]
          )
        )
    );
  }
}