import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/model/Fish.dart';
import 'package:test_project/ui/AquariumPages/tankDetails.dart';

class FishDetails extends StatelessWidget {
  final Fish fish;

  const FishDetails({Key key, this.fish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('' + fish.name),
        backgroundColor: Color(0xFF96C7C2),
      ),
      body: ListView(
        children: <Widget>[
          FishDetailsThumbnail(image: fish.image),
          SizedBox(width: 16, height: 25),
          Row(
            children: [
              SizedBox(width: 16),
              Expanded(
                  child: FishDetailsHeader(fish: fish)
              )
            ]
          ),

        ]
      )
    );
  }
}

class FishDetailsHeader extends StatelessWidget {
  final Fish fish;
  const FishDetailsHeader({Key key, this.fish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("${fish.temperament} . ${fish.minTankSize} gallons . ${fish.careLevel}",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.blueAccent,
          )
        ),
        Text(fish.name, style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 32,
        )),
        SizedBox(height: 20),

        HeaderText(text: "Characteristics"),
        SizedBox(height: 5),
        DescriptionText(text: "Temperament: ${fish.temperament}\n" + "Difficulty: ${fish.careLevel}\n"
            + "Schooling size: ${fish.schoolSize}\n" + 'Maximum Size: ${fish.maxSize}"\n' + "Natural Habitat: ${fish.naturalHabitat}"),


        SizedBox(height: 20),
        HeaderText(text: "Requirements"),
        DescriptionText(text: "Minimum tank size: ${fish.minTankSize} gallons\n" + "Temperature: ${fish.minTemp}-${fish.maxTemp} °F\n"
        + "pH: ${fish.minpH}-${fish.maxpH}"),

        SizedBox(height: 20),
        HeaderText(text: "Preferences"),
        DescriptionText(text: "Plant Density: ${fish.preferredPlantDensity}\n" + "Tank Shape: ${fish.preferredShape}\n"
        + "Substrate: ${fish.preferredSubstrate}"),

        SizedBox(height: 20),
        HeaderText(text: "Other information"),
        DescriptionText(text: fish.otherInformation)

      ]
    );
  }
}

class DescriptionText extends StatelessWidget {
  final String text;

  const DescriptionText({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: TextStyle(
          fontSize: 15.0,
          color: Color(0xFF6E7FAA)),
    );
  }
}

class HeaderText extends StatelessWidget {
  final String text;

  const HeaderText({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF6E7FAA)),
    );
  }
}



class FishDetailsHeaderWithPoster extends StatelessWidget {
  final Fish fish;

  const FishDetailsHeaderWithPoster({Key key, this.fish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: <Widget> [
          FishPoster(image: fish.image.toString())
        ]
      )
    );
  }
}

class FishPoster extends StatelessWidget {
  final String image;

  const FishPoster({Key key, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var borderRadius = BorderRadius.all(Radius.circular(10));
    return Card(
      child: ClipRRect(
        borderRadius: borderRadius = BorderRadius.all(Radius.circular(10)),
        child: Container(
          width: MediaQuery.of(context).size.width/2.2,
          height: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(image)
            )
          )
        )
      )
    );
  }
}


class FishDetailsThumbnail extends StatelessWidget {
  final String image;

  const FishDetailsThumbnail({Key key, this.image}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment:Alignment.bottomCenter,
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 190,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover
                )

              ),
            ),
          ],

        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Color(0x00f5f5f5), Color(0xfff5f5f5)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
            )
          ),
          height: 80
        )
      ]
    );
  }
}
