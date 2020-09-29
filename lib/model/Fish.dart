import 'dart:collection';

class Fish {

  static List<Fish> getFish() => [
    Fish("Angelfish", "Semi-aggressive", "Easy", 1, 6, 55, 78, 86, 6.0, 8.0,
      -1, -1, -1, -1, "Lightly Planted", "Tall", "", "Slow-moving Amazon blackwater river",
      "Should be kept either alone or in mating pairs"
    ),
    Fish("Neon Tetra", "Peaceful", "Easy", 8, 1.5, 10, 70, 81, 6.0, 7.0,
        -1, -1, -1, 10, "Heavily Planted", "Regular", "", "Slow-moving Amazon blackwater river",
        "Sensitive to changes in water parameters, not recommended newly-cycled tanks"
    ),
  ];

  //fish characteristics
  String name;
  String temperament;
  String careLevel;
  int schoolSize;
  double maxSize;

  //habitat requirements
  int minTankSize;
  int minTemp;
  int maxTemp;
  double minpH;
  double maxpH;
  int minKH;
  int maxKH;
  int minGH;
  int maxGH;

  String preferredPlantDensity;
  String preferredShape;
  String preferredSubstrate;

  String naturalHabitat;
  String otherRequirements;

  Fish(this.name, this.temperament, this.careLevel, this.schoolSize, this.maxSize,
      this.minTankSize, this.minTemp, this.maxTemp, this.minpH, this.maxpH,
      this.minKH, this.maxKH, this.minGH, this.maxGH,
      this.preferredPlantDensity, this.preferredShape, this.preferredSubstrate,
      this.naturalHabitat, this.otherRequirements);
}