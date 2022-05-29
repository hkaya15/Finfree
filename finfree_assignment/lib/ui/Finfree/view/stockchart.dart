// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:finfree_assignment/ui/Finfree/model/priceentryinfo.dart';
import 'package:finfree_assignment/ui/Finfree/view/chartpage.dart';
import 'package:finfree_assignment/ui/Finfree/viewmodel/chartviewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StockChart extends StatelessWidget {
  StockChart({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<ChartViewModel>(builder: (context, viewmodel, child) {
      return Scaffold(
        appBar: appBar(title),
        body: FutureBuilder<PriceEntryInfo>(
          future: viewmodel.getStockInfo(),
          builder: (context, result) {
            if (result.hasData) {
              var allData = result.data;
              return SizedBox(
                width: size.width,
                height: size.height,
                child: Column(
                  children: [
                    buttons(viewmodel, allData!),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: PageView(children: [
                          LineChartPage(
                            value: allData,
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      );
    });
  }
}

// AppBar
AppBar appBar(String title) => AppBar(
      title: Text(title),
      centerTitle: true,
    );

// Tab Buttons
Widget buttons(ChartViewModel viewmodel, PriceEntryInfo allData) => Expanded(
    flex: 1,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 2, left: 2),
          child: ButtonBar(
            alignment: MainAxisAlignment.center,
            buttonPadding:
                const EdgeInsets.symmetric(horizontal: 3, vertical: 0),
            children: [
              ElevatedButton(
                child: const Text(
                  "1A",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  viewmodel.setButton(0);
                },
              ),
              ElevatedButton(
                child: const Text(
                  "1G",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  viewmodel.setButton(1);
                  viewmodel.turn(allData);
                },
              ),
              ElevatedButton(
                child: const Text(
                  "1H",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  viewmodel.setButton(2);
                },
              ),
              ElevatedButton(
                child: const Text(
                  "1Y",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  viewmodel.setButton(3);
                },
              ),
              ElevatedButton(
                child: const Text(
                  "3A",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  viewmodel.setButton(4);
                },
              ),
              ElevatedButton(
                child: const Text(
                  "5Y",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  viewmodel.setButton(5);
                },
              ),
            ],
          ),
        ),
      ],
    ));
