import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/model/Fish.dart';

class FishDetails extends StatelessWidget {
  final Fish fish;

  const FishDetails({Key key, this.fish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('' + fish.name),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(


      ),
    );
  }
}