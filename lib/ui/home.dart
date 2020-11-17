import 'package:flutter/material.dart';
import 'package:test_project/ui/AccountPages/accountEditPage.dart';
import 'package:test_project/ui/AquariumPages/myTanksPage.dart';

import 'homePage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  /*
  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyTanksPage()));
  }
  _goToMyTanks(index, context) {
    if (index == 1) {
      navigateToSubPage(context);
    }
  }*/

  int _currentIndex = 1;
  final List<Widget> _children = [MyTanksPage(), HomePage(), AccountEditPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex,
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.today),
            title: Text('My Aquariums'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('Account')
          ),
        ],
      ),
    );
  }



  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}


/*
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.amber,

      child: Center(

        child: Text(
            "Hello Flutter!",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 23.4,
                fontStyle: FontStyle.italic
            )
        ),
      ),
    );
  }
}


                  child: Text(
                    'My Aquarium App',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),

  colors: [Color(0xFF9BEBD8), Color(0xFF344683)]
 */
