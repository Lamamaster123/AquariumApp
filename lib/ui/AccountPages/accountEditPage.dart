import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountEditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Account'),
          backgroundColor: Color(0xFF96C7C2),
        ),
        body: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  SizedBox(height: 50),

                  Container(
                    alignment: Alignment(0.0, 0.0),
                    child: Text(
                      "Hello, Amal",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.black54),
                    ),
                  ),

                  IconButton(
                    icon: Icon(Icons.account_circle),
                    iconSize: 100.0,
                    color: Color(0xFF96C7C2),
                    onPressed: () {
                      debugPrint('hello');
                    },
                  ),

                  SizedBox(height: 10),

                  Container(
                    width: 300.0,
                    alignment: Alignment(1.0, 0.0),
                    child: TextFormField(
                      initialValue: 'Amal Jacob',
                      decoration: InputDecoration(
                        labelText: 'Full Name',
                        border: OutlineInputBorder(),
                        /*suffixIcon: Icon(
                          Icons.error,
                        ),*/
                      ),
                    ),
                  ),

                  SizedBox(height: 30),

                  Container(
                    width: 300.0,
                    alignment: Alignment(1.0, 0.0),
                    child: TextFormField(
                      initialValue: 'amalbjacob@gmail.com',
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        border: OutlineInputBorder(),
                        /*suffixIcon: Icon(
                          Icons.error,
                        ),*/
                      ),
                    ),
                  ),

                  SizedBox(height: 30),

                  Container(
                    width: 300.0,
                    alignment: Alignment(1.0, 0.0),
                    child: TextFormField(
                      initialValue: '************',
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                        /*suffixIcon: Icon(
                          Icons.error,
                        ),*/
                      ),
                    ),
                  ),

                  SizedBox(height: 30),

                  Container(
                    width: 300,
                    child: RaisedButton(onPressed: () {debugPrint('hello');},
                        shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.white54),


                        ),
                        elevation: 4.0,
                        padding: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 12.0),
                        color: Colors.white54,
                        child: Text(
                          'Update Account',
                          style: TextStyle(
                              fontSize: 18.0,
                              //fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        )
                    ),
                  ),

                  SizedBox(height: 15),

                  Container(
                    width: 300,
                    child: RaisedButton(onPressed: () {debugPrint('hello');},
                        shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.white54),

                        ),
                        elevation: 4.0,
                        padding: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 12.0),
                        color: Colors.white54,
                        child: Text(
                          'Sign Out',
                          style: TextStyle(
                              fontSize: 18.0,
                              //fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        )
                    ),
                  ),

                  SizedBox(height: 15),

                  Container(
                    width: 300,
                    child: RaisedButton(onPressed: () {debugPrint('hello');},
                        shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.redAccent),

                        ),
                        elevation: 4.0,
                        padding: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 12.0),
                        color: Colors.redAccent,
                        child: Text(
                          'Delete Account',
                          style: TextStyle(
                              fontSize: 18.0,
                              //fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        )
                    ),
                  ),





                ]
            )
        )
    );
  }
}
