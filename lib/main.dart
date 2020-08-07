import 'package:flutter/material.dart';
import 'screens/HomePage.dart';

void main() => runApp(new MyApp());
Map<int, Color> color = {
  50: Color.fromRGBO(255, 92, 87, .1),
  100: Color.fromRGBO(255, 92, 87, .2),
  200: Color.fromRGBO(255, 92, 87, .3),
  300: Color.fromRGBO(255, 92, 87, .4),
  400: Color.fromRGBO(255, 92, 87, .5),
  500: Color.fromRGBO(255, 92, 87, .6),
  600: Color.fromRGBO(255, 92, 87, .7),
  700: Color.fromRGBO(255, 92, 87, .8),
  800: Color.fromRGBO(255, 92, 87, .9),
  900: Color.fromRGBO(255, 92, 87, 1),
};
MaterialColor colorCustom = MaterialColor(0xff17252A, color);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'NewsApp',
      theme: new ThemeData(
        primarySwatch: colorCustom,
      ),
      home: HomePage(title: 'My NewsApp'),
    );
  }
}


