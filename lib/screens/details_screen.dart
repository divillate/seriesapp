import 'package:flutter/material.dart';
import 'package:seriesapp/constants/theme.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';
    return Scaffold(
      body: CustomScrollView(
        slivers: [_CustomAppBar()],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: SeriesAppColors.black,
      expandedHeight: 60,
      actions: [
        Icon(Icons.favorite_border_outlined),
        Padding(padding: EdgeInsets.all(0.8))
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Text('movie.tittle'),
      ),
    );
  }
}
