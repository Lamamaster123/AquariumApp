import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/model/DataHolder.dart';
import 'package:test_project/model/Tank.dart';

import 'cyclingPage.dart';

class TankSetupPage extends StatefulWidget {
  @override
  _TankSetupPageState createState() => _TankSetupPageState();
}


class _TankSetupPageState extends State<TankSetupPage> {

  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => CyclingPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tank Setup'),
        backgroundColor: Color(0xFF96C7C2),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              debugPrint("hello");
              navigateToSubPage(context);
            },
          )
        ],
      ),
      body: Container(
        //alignment: new FractionalOffset(10.0, 1.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 40),
              Container(
                alignment: Alignment(0.0, 0.0),
                child: Text(
                  "Let's start with the basics",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54),
                ),
              ),

              SizedBox(height: 20),
              Center(
                child: Divider(color: Colors.black),
              ),
              SizedBox(height: 10),




              Row(
                children: [
                  Text(
                    "  Name     ",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                  Container(
                    width: 300.0,
                    alignment: Alignment(1.0, 0.0),
                    child: TextFormField(
                      initialValue: DataHolder.name,
                      decoration: InputDecoration(
                        labelText: 'Tank name',
                        border: OutlineInputBorder(),
                        /*suffixIcon: Icon(
                          Icons.error,
                        ),*/
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          DataHolder.name = newValue;
                        });
                      },

                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
              Center(
                child: Divider(color: Colors.black),
              ),
              SizedBox(height: 10),

              Row(
                children: [
                  Text(
                    "  Size        ",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                  Container(
                    width: 300.0,
                    alignment: Alignment(1.0, 0.0),
                    child: TextFormField(
                      initialValue: DataHolder.size.toString(),
                      decoration: InputDecoration(
                        labelText: 'Size (gallons)',
                        border: OutlineInputBorder(),
                        /*suffixIcon: Icon(
                          Icons.error,
                        ),*/
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          DataHolder.size = double.parse(newValue);
                        });
                      },
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
              Center(
                child: Divider(color: Colors.black),
              ),
              SizedBox(height: 10),



              Row(
                children: [
                  Text(
                    "  Shape",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                  SizedBox(width: 180),
                  DropdownButton<String>(
                    value: DataHolder.shape,
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.blueGrey),
                    underline: Container(
                      height: 2,
                      color: Colors.blueGrey,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        DataHolder.shape = newValue;
                      });
                    },
                    items: <String>['Regular tank', 'Long tank', 'Tall tank    ']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),


              SizedBox(height: 20),
              Center(
                child: Divider(color: Colors.black),
              ),
              SizedBox(height: 10),

              Row(
                children: [
                  Text(
                    "  Plant Density",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                  SizedBox(width: 113),
                  DropdownButton<String>(
                    value: DataHolder.plantDensity,
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.blueGrey),
                    underline: Container(
                      height: 2,
                      color: Colors.blueGrey,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        DataHolder.plantDensity = newValue;
                      });
                    },
                    items: <String>['No plants', 'Lightly planted', 'Densely planted']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),


              SizedBox(height: 20),
              Center(
                child: Divider(color: Colors.black),
              ),
              SizedBox(height: 10),

              Row(
                children: [
                  Text(
                    "  Substrate      ",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                  SizedBox(width: 113),
                  DropdownButton<String>(
                    value: DataHolder.substrate,
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.blueGrey),
                    underline: Container(
                      height: 2,
                      color: Colors.blueGrey,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        DataHolder.substrate = newValue;
                      });
                    },
                    items: <String>['None', 'Gravel', 'Sand', 'Garden soil', 'Aqua soil']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),


              SizedBox(height: 20),
              Center(
                child: Divider(color: Colors.black),
              ),
              SizedBox(height: 10),
















            ]),
    ));
  }
}

/*
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
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(),
                  ),
                  hintText: 'Enter name',
                  fillColor: Colors.white,
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
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                    hintText: 'Enter size in gallons'
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
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                    hintText: 'Enter size in gallons'
                ),
              ),
              SizedBox(height: 40),
 */