import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/model/DataHolder.dart';
import 'package:test_project/model/Fish.dart';
import 'package:test_project/model/Tank.dart';
import 'package:test_project/ui/AquariumPages/tankDetails.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'createTank/tankSetupPage.dart';

class MyTanksPage extends StatefulWidget {
  @override
  _MyTanksPageState createState() => _MyTanksPageState();
}

class _MyTanksPageState extends State<MyTanksPage> {
  List<Tank> tankList = DataHolder.tanks;

  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) =>
        TankSetupPage())).then((value) => setState(() {
          print("why");
          tankList = DataHolder.tanks;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        title: Text('My Tanks'),
        backgroundColor: Color(0xFF96C7C2),
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

      /*body: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return StreamBuilder(
                stream: firestoreDb,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) return CircularProgressIndicator();
                  //return Text(snapshot.data.documents()['name']);
                  return ListView.builder(
                      itemCount: snapshot.data.documents.length,
                      itemBuilder: (BuildContext context, int index) {
                        //return tankCard(tankList[index], context);
                        return Card(
                          elevation: 4.5,
                          color: Colors.white,
                          child: ListTile(

                              title: Text(snapshot.data.documents[index]['name']),
                              subtitle: Text("${tankList[index].size} gallons"),
                              trailing: Text("..."),
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => FishTankDetails(tank: tankList[index],)));
                              }
                          ),

                        );
                      });
                }
            );
          } else if (snapshot.connectionState == ConnectionState.none) {
            return Text("No data");
          }
          return CircularProgressIndicator();
        }
      )*/


      body: ListView.builder(
        itemCount: tankList.length,
        itemBuilder: (BuildContext context, int index) {
                //return tankCard(tankList[index], context);
                return Card(
                  elevation: 4.5,
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
              }));
        }



  Widget tankCard(Tank tank, BuildContext context){
    return InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 120.0,
        child: Card(
          color: Colors.black54,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(tank.name)
            ],
          )

        )
      )
    );
  }
  Future<DocumentSnapshot> getData() async {
    await Firebase.initializeApp();
    return await FirebaseFirestore.instance
        .collection("users")
        .doc("docID")
        .get();
  }
}

