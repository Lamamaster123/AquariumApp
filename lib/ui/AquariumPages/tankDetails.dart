import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/custom_stuff/customButton.dart';
import 'package:test_project/model/DataHolder.dart';
import 'package:test_project/model/Fish.dart';
import 'package:test_project/model/Tank.dart';
import 'package:test_project/model/Warning.dart';
import 'package:test_project/ui/AquariumPages/editTank/issuesAndWarningsPage.dart';
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
  updateStuff() {
    print("got to update function");
    widget.tank = DataHolder.tanks[widget.index];
    print("new size: " + widget.tank.size.toString());
    calculateIssuesAndWarnings();
  }


  Future navigateToEditSetupPage(context) async {
    print("hello?");
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => EditSetupPage(index: widget.index))).then((value) => setState(() {
          updateStuff();
    }));
  }

  Future navigateToEditFishPage(context) async {
    print("hello?");
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => EditFishPage(index: widget.index))).then((value) => setState(() {
          updateStuff();
    }));
  }

  Future navigateToIssuesAndWarningsPage(context) async {
    print("hello?");
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => IssuesAndWarningsPage(index: widget.index)));
  }
  //-----------------------------------

  //list of warning calculations based on decided setup
  TankSizeWarning calculateTankSizeIssue() {
    var minTankSize = 0.0;
    for (var i=0; i < DataHolder.tanks[widget.index].fishes.length; i++) {
      minTankSize += DataHolder.tanks[widget.index].fishes[i].maxSize * DataHolder.tanks[widget.index].fishes[i].numberOfFish;
    }
    if (minTankSize > widget.tank.size) {
      return new TankSizeWarning(minTankSize);
    }
    return null;
  }

  SchoolSizeWarning calculateSchoolSizeIssues() {
    List<Fish> fishesWithIssues = [];
    for (var i=0; i < DataHolder.tanks[widget.index].fishes.length; i++) {
      //every fish that is in the tank
      if (DataHolder.tanks[widget.index].fishes[i].numberOfFish > 0) {
        if (DataHolder.tanks[widget.index].fishes[i].schoolSize > DataHolder.tanks[widget.index].fishes[i].numberOfFish) {
          fishesWithIssues.add(DataHolder.tanks[widget.index].fishes[i]);
        }
      }
    }
    if (fishesWithIssues.isEmpty) {
      return null;
    }
    return new SchoolSizeWarning(fishesWithIssues);
  }

  AggressionWarning calculateAggressionIssues() {
    //if aggressive fish and more than one type = danger = 3
    // aggressive fish and one type = warning = 2
    // semi aggressive and more than one type = warning = 1
    // semi aggressive and one type = warning = 0
    // peaceful = nothing = -1
    List<Fish> aggressive = [];
    List<Fish> semiAggressive = [];
    int totalFish = 0;

    for (var i=0; i < DataHolder.tanks[widget.index].fishes.length; i++) {

      //every fish actually in the tank
      if (DataHolder.tanks[widget.index].fishes[i].numberOfFish > 0) {
        totalFish++;
        if (DataHolder.tanks[widget.index].fishes[i].temperament == "Aggressive") {
          aggressive.add(DataHolder.tanks[widget.index].fishes[i]);
        } else if (DataHolder.tanks[widget.index].fishes[i].temperament == "Semi-aggressive") {
          semiAggressive.add(DataHolder.tanks[widget.index].fishes[i]);
        }
      }
    }
    if (aggressive.isNotEmpty || semiAggressive.isNotEmpty) {
      return new AggressionWarning(aggressive, semiAggressive, totalFish);
    }
    return null;
  }


  //collection of all issues and warnings calculations
  calculateIssuesAndWarnings() {
    List<Warning> warnings = [];
    TankSizeWarning tankSizeIssue = calculateTankSizeIssue();
    if (tankSizeIssue != null) {
      warnings.add(tankSizeIssue);
    }

    SchoolSizeWarning schoolSizeIssues = calculateSchoolSizeIssues();
    if (schoolSizeIssues != null) {
      warnings.add(schoolSizeIssues);
    }

    AggressionWarning aggressionIssues = calculateAggressionIssues();
    if (aggressionIssues != null) {
      warnings.add(aggressionIssues);
    }

    DataHolder.tanks[widget.index].warnings = warnings;
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

              RaisedButton(
                  padding: EdgeInsets.fromLTRB(57.0, 15.0, 57.0, 15.0),
                  color: Colors.yellow,
                  child: Text(
                    'Issues and Warnings',
                    style: TextStyle(
                        fontSize: 18.0,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  onPressed: () {
                    calculateIssuesAndWarnings();
                    navigateToIssuesAndWarningsPage(context);
                  }
              )


            ]
          )
        )
    );
  }
}