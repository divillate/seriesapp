import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seriesapp/constants/theme.dart';
import 'package:seriesapp/screens/home_screen.dart';
import 'package:seriesapp/widgets/widgets.dart';

class TabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => _NavegacionModel(),
        child: Scaffold(body: _Paginas(), bottomNavigationBar: _Navegacion()));
  }
}

class _Navegacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navegacionModel = Provider.of<_NavegacionModel>(context);

    return BottomNavigationBar(
      currentIndex: navegacionModel.paginaActual,
      onTap: (i) => navegacionModel.paginaActual = i,
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

class _Paginas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navegacionModel = Provider.of<_NavegacionModel>(context);

    return PageView(
      controller: navegacionModel.pageController,
      //physics: BouncingScrollPhysics(),
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Container(
          child: HomeScreen(),
        ),
        Container(
          color: Colors.green,
        ),
      ],
    );
  }
}

class _NavegacionModel with ChangeNotifier {
  int _paginaActual = 0;
  PageController _pageController = new PageController();

  int get paginaActual => this._paginaActual;
  set paginaActual(int i) {
    this._paginaActual = i;
    _pageController.animateToPage(i,
        duration: Duration(milliseconds: 250), curve: Curves.easeIn);
    notifyListeners();
  }

  PageController get pageController => this._pageController;
}
