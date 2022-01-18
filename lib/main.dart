import 'package:flutter/material.dart';
import 'package:seriesapp/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SeriesApp',
      initialRoute: '/home',
      routes: {
        '/home': (_) => HomeScreen(),
      },
    );
  }
}
