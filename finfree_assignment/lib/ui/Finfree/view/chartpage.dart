import 'package:finfree_assignment/ui/Finfree/model/priceentryinfo.dart';
import 'package:finfree_assignment/ui/Finfree/view/chartwidget.dart';
import 'package:flutter/material.dart';

class LineChartPage extends StatelessWidget {
  final PriceEntryInfo? value;
  const LineChartPage({Key? key, required this.value}) : super(key: key);
  @override
  Widget build(BuildContext context) => Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        color: const Color(0xff020227),
        child: Padding(
          padding: const EdgeInsets.only(top: 26),
          child: LineChartWidget(
            datas: value,
          ),
        ),
      );
}
