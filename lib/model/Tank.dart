import 'dart:collection';

import 'package:flutter/cupertino.dart';

class Tank {
  static List<Tank> getTanks() => [
    Tank("Big Tank", 38, "Regular", "Lightly Planted", "Sand",
        {"Angelfish": 2, "Serpae Tetras": 7, "Ember Tetra": 1}),
    Tank("Medium Tank", 10, "Regular", "Heavily Planted", "Sand",
        {"Endler's Livebearers": 10, "Corydora Catfish": 4}),
    Tank("Small Tank", 2.5, "Tall", "Heavily Planted", "Aquasoil",
        {"Betta": 1}),
    Tank("New Tank", 7, "Long", "Heavily Planted", "Aquasoil",
        {"Neon Tetra": 8, "Guppies": 2}),
  ];

  String name;
  double size;
  String shape;
  String plantDensity;
  String substrate;
  Map<String, int> fish;

  Tank(this.name, this.size, this.shape, this.plantDensity, this.substrate,
      this.fish);
}