import 'package:charts_flutter/flutter.dart' as charts;

class BarChartModel {
  String name;
  int value;
  final charts.Color color;

  BarChartModel({
    required this.name,
    required this.value,
    required this.color,
  });
}
