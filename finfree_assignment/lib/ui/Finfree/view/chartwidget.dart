import 'package:finfree_assignment/ui/Finfree/model/priceentryinfo.dart';
import 'package:finfree_assignment/ui/Finfree/viewmodel/chartviewmodel.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'charttitles.dart';

class LineChartWidget extends StatefulWidget {
  final PriceEntryInfo? datas;

  const LineChartWidget({Key? key, required this.datas}) : super(key: key);

  @override
  State<LineChartWidget> createState() => _LineChartWidgetState();
}

class _LineChartWidgetState extends State<LineChartWidget> {
  @override
  void initState() {
    super.initState();
    final _chartViewModel = Provider.of<ChartViewModel>(context, listen: false);
    _chartViewModel.turn(widget.datas);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ChartViewModel>(builder: (context, viewmodel, child) {
      return LineChart(
        LineChartData(
            minX: 0,
            maxX: viewmodel.flSpotList.length.toDouble(),
            minY: viewmodel.minY.y - 1.5,
            maxY: viewmodel.maxY.y.ceilToDouble(),
            titlesData: LineTitles.getTitleData(),
            gridData: FlGridData(
                show: true,
                getDrawingHorizontalLine: (value) {
                  return FlLine(color: const Color(0xff37434d), strokeWidth: 1);
                },
                drawVerticalLine: true,
                getDrawingVerticalLine: (value) {
                  return FlLine(color: const Color(0xff37434d), strokeWidth: 1);
                }),
            borderData: FlBorderData(
                show: true,
                border: Border.all(color: const Color(0xff37434d), width: 1)),
            lineBarsData: [
              LineChartBarData(
                  spots: viewmodel.turn(widget.datas),
                  isCurved: true,
                  color: const Color(0xff02d39a),
                  barWidth: 5,
                  dotData: FlDotData(show: false),
                  belowBarData: BarAreaData(
                      show: true,
                      color: const Color(0xff02d39a).withOpacity(0.3)))
            ]),
      );
    });
  }
}
