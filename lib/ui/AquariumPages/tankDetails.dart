import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/custom_stuff/customButton.dart';
import 'package:test_project/model/DataHolder.dart';
import 'package:test_project/model/Tank.dart';
import 'package:test_project/ui/homePage.dart';

import 'editTank/editFishPage.dart';
import 'editTank/editSetupPage.dart';

class FishTankDetails extends StatefulWidget {
  Tank tank;
  final int index;
  FishTankDetails({Key key, this.tank, this.index}) : super(key: key);

  @override
  _FishTankDetailsState createState() => _FishTankDetailsState();
}

class _FishTankDetailsState extends State<FishTankDetails> {

  Future navigateToEditSetupPage(context) async {
    print("hello?");
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => EditSetupPage(index: widget.index))).then((value) => setState(() {
          widget.tank = DataHolder.tanks[widget.index];
    }));;
  }

  Future navigateToEditFishPage(context) async {
    print("hello?");
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => EditFishPage(index: widget.index))).then((value) => setState(() {
          widget.tank = DataHolder.tanks[widget.index];
    }));;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.tank.name),
          backgroundColor: Color(0xFF96C7C2),
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
                  '     ${widget.tank.size} gallon ${widget.tank.shape.toLowerCase()}',
                  style: TextStyle(
                      fontSize:18.0,
                      color: Colors.black54),
                ),

              ),

              //planted level
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '     ${widget.tank.plantDensity}',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black54),
                ),

              ),

              //substrate
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '     ${widget.tank.substrate}',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black54),
                ),

              ),

              SizedBox(height: 40),

              RaisedButton(
                padding: EdgeInsets.fromLTRB(100.0, 15.0, 100.0, 15.0),
                color: Colors.white54,
                child: Text(
                  'Edit Setup',
                  style: TextStyle(
                      fontSize: 18.0,
                      //fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                onPressed: () {
                  navigateToEditSetupPage(context);
                }

                ),

              SizedBox(height: 15),

              RaisedButton(
                  padding: EdgeInsets.fromLTRB(108.0, 15.0, 108.0, 15.0),
                  color: Colors.white54,
                  child: Text(
                    'Edit Fish',
                    style: TextStyle(
                        fontSize: 18.0,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  onPressed: () {
                    navigateToEditFishPage(context);
                  }
              ),

              SizedBox(height: 15),

              RaisedButton(onPressed: () {},
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