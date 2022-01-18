import 'package:flutter/material.dart';
import 'package:seriesapp/constants/theme.dart';

class NavigatorBar extends StatelessWidget {
  const NavigatorBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 3,
      backgroundColor: SeriesAppColors.black,
      unselectedItemColor: SeriesAppColors.white,
      selectedItemColor: SeriesAppColors.primary,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.access_alarm), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm), label: 'Favorites'),
        BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm), label: 'Recents'),
        BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm), label: 'Searchs'),
      ],
    );
  }
}
