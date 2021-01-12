import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/model/DataHolder.dart';
import 'package:test_project/ui/GalleryPages/fishDetails.dart';

import '../tankDetails.dart';

class EditFishPage extends StatefulWidget {
  final int index;
  const EditFishPage({Key key, this.index}) : super(key: key);

  @override
  _EditFishPage createState() => _EditFishPage();
}

class _EditFishPage extends State<EditFishPage> {

  Future navigateToSubPage(context) async {
    Navigator.pop(context, MaterialPageRoute(builder: (context) => FishTankDetails()));
  }

  addFish(int index) {

    setState(() {
      print('added');
      DataHolder.tanks[widget.index].fishes[index].numberOfFish += 1;
    });

  }

  deleteFish(int index) {
    if (DataHolder.tanks[widget.index].fishes[index].numberOfFish > 0) {
      setState(() {
        DataHolder.tanks[widget.index].fishes[index].numberOfFish -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Fish'),
          backgroundColor: Color(0xFF96C7C2),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                navigateToSubPage(context);
              },
            )
          ],
        ),
        body: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: Colors.white,
            ),
            itemCount: DataHolder.tanks[widget.index].fishes.length,
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                children:<Widget> [
                  Positioned(
                    child: Card(
                      margin: EdgeInsets.only(left: 20),
                      elevation: 4.5,
                      color: Colors.white,
                      child: ListTile(

                          title: Text(DataHolder.tanks[widget.index].fishes[index].name),
                          subtitle: Text("${DataHolder.tanks[widget.index].fishes[index].temperament}"),
                          leading: CircleAvatar(
                              child: Container(
                                decoration: BoxDecoration(
                                  //color: Colors.blue,
                                  borderRadius: BorderRadius.circular(13.9),
                                ),
                                child: Text(""),
                              )
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => FishDetails(fish: DataHolder.tanks[widget.index].fishes[index],)));
                          }
                      ),
                    ),
                  ),
                  Positioned(
                      top: 10.0,
                      left: 30.0,
                      child: fishImage(DataHolder.tanks[widget.index].fishes[index].image)
                  ),

                  Positioned(
                      top: 10.0,
                      left: 360.0,
                      child: IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          print("hello?");
                          addFish(index);
                        },
                      )
                  ),

                  Positioned(
                    top: 14.0,
                    left: 340.0,
                    child: Text(

                      DataHolder.tanks[widget.index].fishes[index].numberOfFish.toString(),
                      style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54),

                    ),

                  ),

                  Positioned(
                      top: 10.0,
                      left: 295.0,
                      child: IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          deleteFish(index);
                        },
                      )
                  ),






                ],
              );
            })
      /*body: Container(
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
        )*/
    );
  }

  Widget fishImage(String imageUrl) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(imageUrl ?? ''),
            fit: BoxFit.cover,
          )
      ),
    );
  }
}
