import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/ui/AquariumPages/createTank/addFishPage.dart';


class CyclingPage extends StatefulWidget {
  @override
  _CyclingPageState createState() => _CyclingPageState();
}

class _CyclingPageState extends State<CyclingPage> {
  bool cycled = false;

  void _onCycled(bool newValue) => setState(() {
    cycled = newValue;
  });

  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => addFishPage()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cycling'),
          backgroundColor: Colors.blueGrey,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                cycled ? navigateToSubPage(context) : null;
              },
            )
          ],
        ),
        body: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 40),
                  Container(
                    alignment: Alignment(0.0, 0.0),
                    child: Text(
                      "Have you cycled your tank yet?",
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

                  Row(
                    children: [
                      SizedBox(width: 50),
                      Text(
                        'My tank has cycled for AT LEAST 2 weeks',
                        style: TextStyle(
                            fontSize:13.0,
                            color: Colors.black54),
                      ),

                      Checkbox(
                          value: cycled,
                          onChanged: _onCycled,
                      ),


                    ],
                  ),

                  Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Divider(color: Colors.black,)
                  ),
                  SizedBox(height: 10),

                  Container(
                    alignment: Alignment(-1.0, 0.0),
                    margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Text(
                      "What is cycling?",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF6E7FAA)),
                    ),
                  ),
                  SizedBox(height: 10),

                  Container(
                    alignment: Alignment(-1.0, 0.0),
                    margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Text(
                      "Cycling a tank means to establish a colony of the beneficial bacteria that your fish need.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xFF6E7FAA)),
                    ),
                  ),

                  SizedBox(height: 10),

                  Container(
                    alignment: Alignment(-1.0, 0.0),
                    margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Text(
                      "When fish waste accumulates, it breaks down into a toxic chemical called ammonia. Beneficial bacteria, however, will process ammonia into nitrites, and nitrites into nitrates, which are far less toxic to your fish. ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xFF6E7FAA)),
                    ),
                  ),

                  // -------SECOND PARA--------
                  SizedBox(height: 20),

                  Container(
                    alignment: Alignment(-1.0, 0.0),
                    margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Text(
                      "How do you cycle a tank?",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF6E7FAA)),
                    ),
                  ),



                  SizedBox(height: 10),

                  Container(
                    alignment: Alignment(-1.0, 0.0),
                    margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Text(
                      "There are multiple ways to cycle a tank. Detailed steps to most of these options can be found online.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xFF6E7FAA)),
                    ),
                  ),

                  SizedBox(height: 10),

                  Container(
                    alignment: Alignment(-1.0, 0.0),
                    margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Text(
                      "In general, after filling the tank with dechlorinated water, a source of ammonia must be added to initially feed the beneficial bacteria.  Afterwards, wait until both ammonia and nitrite levels have stabilized at 0 ppm (parts per million). A test kit is suggested to measure these values.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xFF6E7FAA)),
                    ),
                  ),

                  SizedBox(height: 10),

                  Container(
                    alignment: Alignment(-1.0, 0.0),
                    margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Text(
                      "Cycling will typically take anywhere from 2 weeks to 2 months. Once the tank is cycled it is ready for fish to be added.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xFF6E7FAA)),
                    ),
                  ),









                ]
            )
        )
    );
  }
}
