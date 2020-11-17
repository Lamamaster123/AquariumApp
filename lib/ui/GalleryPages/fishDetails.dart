import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/model/Fish.dart';
import 'package:test_project/ui/AquariumPages/tankDetails.dart';

class FishDetails extends StatelessWidget {
  final Fish fish;

  const FishDetails({Key key, this.fish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('' + fish.name),
        backgroundColor: Color(0xFF96C7C2),
      ),
      body: ListView(
        children: <Widget>[

        ]
      )
    );
  }
}

class FishDetailsThumbnail extends StatelessWidget {

  final String thumbnail;

  const FishDetailsThumbnail({Key key, this.thumbnail}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
