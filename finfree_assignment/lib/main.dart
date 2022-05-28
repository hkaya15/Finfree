import 'package:finfree_assignment/core/constants/constants.dart';
import 'package:finfree_assignment/ui/Finfree/view/stockchart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ConstantClass.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const StockChart(title: ConstantClass.appTitle),
    );
  }
}


