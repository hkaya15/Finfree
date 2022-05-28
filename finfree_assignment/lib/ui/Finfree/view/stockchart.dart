import 'package:finfree_assignment/core/constants/constants.dart';
import 'package:flutter/material.dart';

class StockChart extends StatelessWidget {
  const StockChart({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title),
      body: const Center(child: Text(ConstantClass.homePage)));
  }
}

// AppBar
AppBar appBar(String title) => AppBar(
        title: Text(title),
        centerTitle: true,
      );