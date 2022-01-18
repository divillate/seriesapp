import 'package:flutter/material.dart';
import 'package:seriesapp/constants/theme.dart';

class RecentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: SeriesAppColors.black,
      ),
      body: Container(
        child: Center(
          child: Text('Pantallas de recientes'),
        ),
      ),
    );
  }
}
