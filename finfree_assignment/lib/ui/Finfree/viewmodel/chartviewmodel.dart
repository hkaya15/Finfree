import 'package:finfree_assignment/locator.dart';
import 'package:finfree_assignment/ui/Finfree/model/priceentryinfo.dart';
import 'package:finfree_assignment/ui/Finfree/service/api.dart';
import 'package:finfree_assignment/ui/Finfree/service/apibase.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartViewModel with ChangeNotifier implements APIBase {
  final API _api = locator<API>();
  int _button = 0;
  late List<FlSpot> flSpotList;

  late FlSpot _minY;
  late FlSpot _maxY;

  int get button => _button;
  FlSpot get minY => _minY;
  FlSpot get maxY => _maxY;

  setButton(int value) {
    _button = value;
    notifyListeners();
  }

  @override
  Future<PriceEntryInfo> getStockInfo() async {
    return _api.getStockInfo();
  }

// It helps to turning values to user select
// I try to send data as timestamp but it resulted with memory-leak. It has to find the best practice to handle with x axis.
  List<FlSpot>? turn(PriceEntryInfo? value) {
    List<FlSpot> list = [];

    if (_button == 0) {
      value?.l1A?.forEach((element) {
        var x = element.d?.toDouble();
        var date = DateTime.fromMicrosecondsSinceEpoch(element.d! * 1000);
        x = date.day.toDouble() + 0.1 * date.month;
        var y = element.c?.toDouble();
        var newSpot = FlSpot(x, y!);
        list.add(newSpot);
      });

      flSpotList = list.asMap().entries.map((e) {
        return FlSpot(e.key.toDouble(), e.value.y);
      }).toList();
    } else if (_button == 1) {
      value?.l1G?.forEach((element) {
        var x = element.d?.toDouble();
        var date = DateTime.fromMicrosecondsSinceEpoch(element.d! * 1000);
        x = date.day.toDouble() + 0.1 * date.month;
        var y = element.c?.toDouble();
        var newSpot = FlSpot(x, y!);
        list.add(newSpot);
      });

      flSpotList = list.asMap().entries.map((e) {
        return FlSpot(e.key.toDouble(), e.value.y);
      }).toList();
    } else if (_button == 2) {
      value?.l1H?.forEach((element) {
        var x = element.d?.toDouble();
        var date = DateTime.fromMicrosecondsSinceEpoch(element.d! * 1000);
        x = date.day.toDouble() + 0.1 * date.month;
        var y = element.c?.toDouble();
        var newSpot = FlSpot(x, y!);
        list.add(newSpot);
      });
      flSpotList = list.asMap().entries.map((e) {
        return FlSpot(e.key.toDouble(), e.value.y);
      }).toList();
    } else if (_button == 3) {
      value?.l1Y?.forEach((element) {
        var x = element.d?.toDouble();
        var date = DateTime.fromMicrosecondsSinceEpoch(element.d! * 1000);
        x = date.day.toDouble() + 0.1 * date.month;
        var y = element.c?.toDouble();
        var newSpot = FlSpot(x, y!);
        list.add(newSpot);
      });

      flSpotList = list.asMap().entries.map((e) {
        return FlSpot(e.key.toDouble(), e.value.y);
      }).toList();
    } else if (_button == 4) {
      value?.l1A?.forEach((element) {
        var x = element.d?.toDouble();
        var date = DateTime.fromMicrosecondsSinceEpoch(element.d! * 1000);
        x = date.day.toDouble() + 0.1 * date.month;

        var y = element.c?.toDouble();

        var newSpot = FlSpot(x, y!);
        list.add(newSpot);
      });

      flSpotList = list.asMap().entries.map((e) {
        return FlSpot(e.key.toDouble(), e.value.y);
      }).toList();
    } else {
      value?.l5Y?.forEach((element) {
        var x = element.d?.toDouble();
        var date = DateTime.fromMicrosecondsSinceEpoch(element.d! * 1000);
        x = date.day.toDouble() + 0.1 * date.month;
        var y = element.c?.toDouble();
        var newSpot = FlSpot(x, y!);
        list.add(newSpot);
      });

      flSpotList = list.asMap().entries.map((e) {
        return FlSpot(e.key.toDouble(), e.value.y);
      }).toList();
    }

    _minY = flSpotList
        .reduce((value, element) => value.y < element.y ? value : element);
    _maxY = flSpotList
        .reduce((value, element) => value.y > element.y ? value : element);

    return flSpotList;
  }
}
