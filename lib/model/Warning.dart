import 'dart:collection';

import 'package:flutter/cupertino.dart';

import 'Fish.dart';

abstract class Warning {
  String type;
  Warning(this.type);
}

class TankSizeWarning extends Warning {
  TankSizeWarning() : super('Tank Size Warning');
}


class SchoolSizeWarning extends Warning {
  List<Fish> fishes;
  SchoolSizeWarning(this.fishes) : super('School Size Warning');
}

class AggressionWarning extends Warning {
  List<Fish> aggressiveFishes;
  List<Fish> semiAggressiveFishes;
  int totalFish;
  AggressionWarning(this.aggressiveFishes, this.semiAggressiveFishes, this.totalFish) : super('Aggression Warning');

}