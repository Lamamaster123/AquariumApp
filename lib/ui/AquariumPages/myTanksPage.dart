import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/model/Tank.dart';
import 'package:test_project/ui/AquariumPages/tankDetails.dart';

import 'createTank/tankSetupPage.dart';

class MyTanksPage extends StatelessWidget {
  final List<Tank> tankList = Tank.getTanks();

  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => TankSetupPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        title: Text('My Tanks'),
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                debugPrint("hello");
                navigateToSubPage(context);
              },
          )
        ],

      ),
      body: ListView.builder(
          itemCount: tankList.length,
          itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.white,
          child: ListTile(

            title: Text(tankList[index].name),
            subtitle: Text("${tankList[index].size} gallons"),
            trailing: Text("..."),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => FishTankDetails(tank: tankList[index],)));
            }
          ),

        );
      })
    );
  }
}

