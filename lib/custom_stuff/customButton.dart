import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/ui/contactPage.dart';
import 'package:test_project/ui/GalleryPages/galleryPage.dart';
import 'package:test_project/ui/home.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final double horizontalInset;
  final double verticalInset;

  const CustomButton({Key key, this.name, this.horizontalInset, this.verticalInset}) : super(key: key);

  Future navigateToGalleryPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => GalleryPage()));
  }

  Future navigateToContactPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ContactPage()));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (name == 'Visit Gallery') {
          navigateToGalleryPage(context);
        } else if (name == 'Contact Us') {
          navigateToContactPage(context);
        }
        /*
        final snackBar = SnackBar(content: Text("On the Way!"),
            backgroundColor: Colors.amberAccent.shade700);

        Scaffold.of(context).showSnackBar(snackBar);*/
      },


      child: Container(

        padding: EdgeInsets.fromLTRB(horizontalInset, verticalInset, horizontalInset, verticalInset),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.circular(8.0),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFFFFFFF), Color(0xFF959595)]),
        ),
        child: Text(
          name,
          style: TextStyle(
              fontSize: 18.0,
              //fontWeight: FontWeight.bold,
              color: Colors.black54),
        ),
      ),
    );
  }
}