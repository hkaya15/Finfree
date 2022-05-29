import 'package:finfree_assignment/core/constants/constants.dart';
import 'package:finfree_assignment/locator.dart';
import 'package:finfree_assignment/ui/Finfree/view/stockchart.dart';
import 'package:finfree_assignment/ui/Finfree/viewmodel/chartviewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
  setupLocator();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
         ChangeNotifierProvider(create: (context) => ChartViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: ConstantClass.appTitle,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home:  StockChart(title: ConstantClass.appTitle),
      ),
    );
  }
}


