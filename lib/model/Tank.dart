import 'dart:collection';

import 'package:flutter/cupertino.dart';

import 'Fish.dart';

class Tank {
  static List<Tank> getTanks() => [
    //tester, not added but manually adding in code
    Tank("Big Tank", 38, "Regular", "Lightly Planted", "Sand",
        [Fish.getFish()[1]]),
  ];

  static Tank getTemp() => Tank('My New Tank', 10.0, "Regular tank", "No plants", "None", Fish.getFish());

  String name;
  double size;
  String shape;
  String plantDensity;
  String substrate;
  List<Fish> fishes;

  Tank(this.name, this.size, this.shape, this.plantDensity, this.substrate,
      this.fishes);
}