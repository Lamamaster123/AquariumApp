import 'Fish.dart';
import 'Tank.dart';

class DataHolder {

  static String name = "My New Tank";
  static double size = 10.0;
  static String shape = "Regular tank";
  static String plantDensity = "No plants";
  static String substrate = "None";
  static List<Tank> tanks = [
    //tester, not added but manually adding in code
    Tank("Big Tank", 38, "Regular", "Lightly Planted", "Sand",
        [Fish.getFish()[1]]),
  ];

}