import 'package:flutter/material.dart';
import 'package:seriesapp/constants/theme.dart';
import 'package:seriesapp/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          elevation: 0,
          backgroundColor: SeriesAppColors.black,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          ],
        ),
        backgroundColor: SeriesAppColors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              //listado horizontal de peliculas
              SerieSlider(),
            ],
          ),
        ));
  }
}
