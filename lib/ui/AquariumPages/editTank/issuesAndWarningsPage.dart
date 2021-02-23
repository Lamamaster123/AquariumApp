import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/model/DataHolder.dart';
import 'package:test_project/model/Warning.dart';
import 'package:test_project/ui/GalleryPages/fishDetails.dart';

import '../tankDetails.dart';

class IssuesAndWarningsPage extends StatefulWidget {
  final int index;
  const IssuesAndWarningsPage({Key key, this.index}) : super(key: key);
  @override
  _IssuesAndWarningsPageState createState() => _IssuesAndWarningsPageState();
}

class _IssuesAndWarningsPageState extends State<IssuesAndWarningsPage> {

  String subtitle(index) {
    if (DataHolder.tanks[widget.index].warnings[index].type == "Tank Size Warning") {
      TankSizeWarning warning = DataHolder.tanks[widget.index].warnings[index];
      return "\nYour tank is overstocked. Reduce the fish in this tank.\nRecommended tank size for current setup: "
          + warning.recommendedSize.toString();
    } else if (DataHolder.tanks[widget.index].warnings[index].type == "School Size Warning") {
      String s = "\nThe following fish do not have a large enough school in your tank: ";
      SchoolSizeWarning warning = DataHolder.tanks[widget.index].warnings[index];
      s += warning.fishes[0].name;
      for(int i=1; i<warning.fishes.length; i++) {
        s += ", " + warning.fishes[i].name;
      }
      return s;
    } else if (DataHolder.tanks[widget.index].warnings[index].type == "Aggression Warning") {
      String s = "\nSome of your fish are either classified as aggressive or semi-aggressive, "
          "so extra caution must be taken with stocking choice.\n\n";
      AggressionWarning warning = DataHolder.tanks[widget.index].warnings[index];

      //aggressive fish
      if (warning.aggressiveFishes.isNotEmpty) {
        s += "The following are aggressive: " + warning.aggressiveFishes[0].name + "\n"+ "\n";
      }
      for(int i=1; i<warning.aggressiveFishes.length; i++) {
        s += ", " + warning.aggressiveFishes[i].name;
      }

      //semi aggressive fish
      if (warning.semiAggressiveFishes.isNotEmpty) {
        s += "The following are semi-aggressive: " + warning.semiAggressiveFishes[0].name + "\n";
      }
      for(int i=1; i<warning.semiAggressiveFishes.length; i++) {
        s += ", " + warning.semiAggressiveFishes[i].name;
      }
      return s;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade100,
        appBar: AppBar(
          title: Text('Issues and Warnings'),
          backgroundColor: Color(0xFF96C7C2),
        ),
        body: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: Colors.white,
            ),
            itemCount: DataHolder.tanks[widget.index].warnings.length,
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                children:<Widget> [
                  Positioned(
                    child: Card(
                      //margin: EdgeInsets.only(left: 20),
                      elevation: 4.5,
                      color: Colors.white,
                      child: ListTile(
                      //DataHolder.tanks[widget.index].warnings[index].type
                          title: Text(
                            DataHolder.tanks[widget.index].warnings[index].type,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.red),
                          ),
                          subtitle: Text(subtitle(index)),
                      ),
                    ),
                  ),
                ],
              );
            })
    );
  }
}



