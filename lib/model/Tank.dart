import 'dart:collection';

import 'package:flutter/cupertino.dart';

import 'Fish.dart';

class Tank {
  String name;
  double size;
  String shape;
  String plantDensity;
  String substrate;
  List<Fish> fishes;

  Tank(this.name, this.size, this.shape, this.plantDensity, this.substrate,
      this.fishes);
}