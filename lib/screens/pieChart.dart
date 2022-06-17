import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class pieChart extends StatelessWidget {
  Map<String, double> dataMap = {'Male': 17, 'Female': 20, 'Others': 3};

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: Container(
              width: 252,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  cartmodel(name: 'Total GharDhuri', valdata: 11366),
                  cartmodel(name: 'Pupulation', valdata: 45608),
                  cartmodel(name: 'Woman', valdata: 24500),
                  cartmodel(name: 'Man', valdata: 211008),
                  cartmodel(name: 'Others', valdata: 0),
                ],
              ),
            ),
          ),
          Container(
              height: 234,
              child: PieChart(
                  dataMap: dataMap,
                  chartRadius: MediaQuery.of(context).size.width,
                  legendOptions: LegendOptions(
                    legendPosition: LegendPosition.bottom,
                  ),
                  chartValuesOptions: ChartValuesOptions(
                    showChartValuesInPercentage: true,
                  ))),
        ],
      ),
    ));
  }

  Card cartmodel({required String name, required int valdata}) {
    return Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              Spacer(),
              Text(
                '$valdata',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ));
  }
}
