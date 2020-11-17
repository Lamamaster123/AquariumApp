import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/model/Fish.dart';

import 'fishDetails.dart';

class GalleryPage extends StatelessWidget {
  final List<Fish> fishList = Fish.getFish();

  //get tankList => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade100,
        appBar: AppBar(
          title: Text('Fish Gallery'),
          backgroundColor: Color(0xFF96C7C2),
        ),
        body: ListView.builder(
            itemCount: fishList.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 4.5,
                color: Colors.white,
                child: ListTile(

                    title: Text(fishList[index].name),
                    subtitle: Text("${fishList[index].temperament}"),
                    trailing: Text("..."),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => FishDetails(fish: fishList[index],)));
                    }
                ),

              );
            })
    );
  }
}
