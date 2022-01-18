import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seriesapp/providers/movies_provider.dart';
import 'package:seriesapp/screens/screens.dart';
import 'package:seriesapp/screens/tabs_screen.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MoviesProvider(),
          lazy: false,
        ),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SeriesApp',
      initialRoute: '/home',
      routes: {
        '/home': (_) => TabsScreen(),
        '/details': (_) => DetailsScreen()
      },
    );
  }
}
