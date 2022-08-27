import 'package:flutter/material.dart';

import './screens/airtime_converter_screen.dart';
import './screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Air Money',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (ctx) => const MyHomePage(),
        '/convert-airtime': (ctx) => const AirtimeCoverterScreen(),
      },
    );
  }
}
