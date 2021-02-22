import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:test_project/model/Warning.dart';

import 'Fish.dart';

class Tank {
  String name;
  double size;
  String shape;
  String plantDensity;
  String substrate;
  List<Fish> fishes;
  List<Warning> warnings;

  Tank(this.name, this.size, this.shape, this.plantDensity, this.substrate,
      this.fishes, this.warnings);
}