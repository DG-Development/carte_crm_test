import 'package:flutter/material.dart';
import 'package:order_widget/order_widget.dart';
import 'package:total_revenue/total_revenue.dart';

import '../../../env_config.dart';

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context)!;
    return MaterialApp(
      title: config.appName,
      theme: ThemeData(
        primarySwatch: config.color,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OrderStatus(screenSize),
            TotalRevenue(screenSize)
          ],
        )
    );
  }
}
