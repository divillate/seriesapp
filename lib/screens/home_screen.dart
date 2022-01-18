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
            _SellAll(),
            SizedBox(
              height: 10,
            ),
            //SerieSliderVertical()
          ],
        ),
      ),
      bottomNavigationBar: NavigatorBar(),
    );
  }
}

class _SellAll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Sell all',
          style: TextStyle(
              color: SeriesAppColors.primary,
              fontSize: 20,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.end,
        ),
        Icon(
          Icons.arrow_forward_ios_rounded,
          size: 20,
          color: SeriesAppColors.primary,
        ),
      ],
    );
  }
}
