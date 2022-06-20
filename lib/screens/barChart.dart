// import 'package:charts_flutter/flutter.dart' as charts;
// import 'package:flutter/material.dart';
// import 'package:palika/models/bar.dart';

// class barChart extends StatelessWidget {
//   final List<BarChartModel> data = [
//     BarChartModel(
//       name: "Dhara-Pipe",
//       value: 3,
//       color: charts.ColorUtil.fromDartColor(Colors.green),
//     ),
//     BarChartModel(
//       name: "Dunge",
//       value: 7,
//       color: charts.ColorUtil.fromDartColor(Colors.green),
//     ),
//     BarChartModel(
//       name: "Jar",
//       value: 15,
//       color: charts.ColorUtil.fromDartColor(Colors.green),
//     ),
//     BarChartModel(
//       name: "Others",
//       value: 8,
//       color: charts.ColorUtil.fromDartColor(Colors.green),
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     List<charts.Series<BarChartModel, String>> series = [
//       charts.Series(
//         id: "value",
//         data: data,
//         domainFn: (BarChartModel series, _) => series.name,
//         measureFn: (BarChartModel series, _) => series.value,
//         colorFn: (BarChartModel series, _) => series.color,
//       ),
//     ];

//     return Scaffold(
//       body: Container(
//         height: 420,
//         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//         child: charts.BarChart(
//           series,
//           animate: true,
//         ),
//       ),
//     );
//   }
// }
