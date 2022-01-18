import 'package:flutter/material.dart';
import 'package:seriesapp/constants/theme.dart';
import 'package:seriesapp/widgets/widgets.dart';

class SerieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Popular'),
          elevation: 0,
          backgroundColor: SeriesAppColors.black,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          ],
        ),
        backgroundColor: SeriesAppColors.black,
        body: Column(
          children: [CardSwiper()],
        ));
  }
}
