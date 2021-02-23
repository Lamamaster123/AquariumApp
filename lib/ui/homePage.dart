

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/custom_stuff/customButton.dart';

class HomePage extends StatelessWidget {
  _tapAccount() {
    debugPrint("Settings tapped");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF96C7C2),


        body: Container(
          alignment: Alignment.center,
          //decoration: BoxDecoration(
          //  gradient: LinearGradient(
          //      begin: Alignment.topCenter,
          //      end: Alignment.bottomCenter,
          //      colors: [Color(0xFF9BEBD8), Color(0xFF344683)]),
          //),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              fishImage("https://www.pngkit.com/png/full/340-3400437_fish-food-icon-transparent-black-fish-icon.png"),
              SizedBox(height: 50),
              Text(
                'My Aquarium App',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 130),
              CustomButton(name: 'Visit Gallery', horizontalInset: 62.0, verticalInset: 20.0),
              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 130.0, right: 130.0),
                      child: Divider(
                        color: Colors.white,
                        height: 36,
                        thickness: 1,
                      )),
                ),
              ]),
              CustomButton(name: 'Contact Us', horizontalInset: 65.0, verticalInset: 20.0),



            ],
          )


          /*child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              ButtonTheme(
                minWidth: 50.0,
                height: 50.0,
                child: RaisedGradientButton(
                  onPressed: () {},
                  child: Text("test"),
                ),
              )
              //CustomButton(),
              /*RaisedButton(
                child: Text("Go To Aquariums"),
                onPressed: tmpFunction,
                color: Colors.grey,
                textColor: Colors.black,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                splashColor: Colors.grey,
              )*/

            ],
          ),*/
        ));
  }

  Widget fishImage(String imageUrl) {
    return Container(
      width: 200,
      height: 130,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageUrl ?? ''),
            fit: BoxFit.cover,
          )
      ),
    );
  }
}





