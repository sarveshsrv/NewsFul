//Initial Code

/*import 'package:flutter/material.dart';
void main() => runApp(new MyApp());
Map<int, Color> color = {
 50: Color.fromRGBO(255, 92, 87, .1),
100: Color.fromRGBO(255, 92, 87, .2),
300: Color.fromRGBO(255, 92, 87, .4),
400: Color.fromRGBO(255, 92, 87, .5),
500: Color.fromRGBO(255, 92, 87, .6),
700: Color.fromRGBO(255, 92, 87, .8),
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
      home: new MyHomePage(title: 'My NewsApp'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}
*/

/*

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //Title bar for the app
        appBar: AppBar(
            title: Center(
          child: Text('NewsApp'),
        )),
        //A button at the centre made for only demonstration purpose
        body: Center(
          child: RaisedButton(
            color: Colors.redAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
            textColor: Colors.white,
            child: Text(
              "Tap for news",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}

*/
