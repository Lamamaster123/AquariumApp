import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/model/Fish.dart';

class addFishPage extends StatelessWidget {
  final List<Fish> fishList = Fish.getFish();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Fish'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 40),
                  Container(
                    alignment: Alignment(0.0, 0.0),
                    child: Text(
                      "It’s finally time to add fish!",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.black54),
                    ),
                  ),

                  SizedBox(height: 20),
                  Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Divider(color: Colors.black,)
                  ),
                  /*
                  ListView.builder(
                      itemCount: fishList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          color: Colors.white,
                          child: ListTile(

                              title: Text(fishList[index].name),
                              subtitle: Text("${fishList[index].temperament}"),
                              trailing: Text("..."),
                              onTap: () {
                                debugPrint(fishList[index].name + " added");
                              }
                          ),

                        );
                      })*/

                ]
            )
        )
    );
  }
}
