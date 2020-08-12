import 'package:flutter/material.dart';
import 'Categories.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => new _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //  constraints: new BoxConstraints.expand(
      //        width: MediaQuery.of(context).size.width -120,
      //      ),
      child: Drawer(
        child: Container(
          constraints: new BoxConstraints.expand(
            width: MediaQuery.of(context).size.width - 80,
          ),
          color: Colors.white,
          alignment: Alignment.center,
          child: new ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              new UserAccountsDrawerHeader(
                arrowColor: Colors.teal,
                accountName: new Container(
                  margin: EdgeInsets.only(top: 28),
                  child: RaisedButton(
                    color: Colors.teal,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    textColor: Colors.white,
                    child: Text(
                      'techSarvesh',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      _opennewpage("My Profile");
                    },
                  ),
                ),
                accountEmail: new Text(
                  'sarveshtiwariDEV@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage('images/lake.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: AssetImage(
                    'images/img.png',
                  ),
                ),
              ),
              new ListTile(
                  leading: new Icon(Icons.category),
                  title: new Text(
                    "Categories",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontFamily: 'Galada',
                      letterSpacing: 1.0,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Categories()),
                    );
                  }),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: Divider(
                  height: 5.0,
                  thickness: 1.5,
                  color: Color(0xff3AAFA9),
                ),
              ),
              new ListTile(
                  leading: new Icon(Icons.bookmark),
                  title: new Text(
                    "Library",
                    style: TextStyle(
                      fontFamily: 'Galada',
                      letterSpacing: 1.0,
                      color: Colors.black,
                      fontSize: 20.0,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    _opennewpage("Library");
                  }),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: Divider(
                  height: 5.0,
                  thickness: 1.5,
                  color: Color(0xff3AAFA9),
                ),
              ),
              new ListTile(
                  leading: new Icon(Icons.settings),
                  title: new Text(
                    "Settings",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontFamily: 'Galada',
                      letterSpacing: 1.0,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    _opennewpage("Settings");
                  }),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: Divider(
                  height: 5.0,
                  thickness: 1.5,
                  color: Color(0xff3AAFA9),
                ),
              ),
              new ListTile(
                  leading: new Icon(Icons.help),
                  title: new Text(
                    "Help",
                    style: TextStyle(
                      fontFamily: 'Galada',
                      letterSpacing: 1.0,
                      color: Colors.black,
                      fontSize: 20.0,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    _opennewpage("Help");
                  }),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: Divider(
                  height: 5.0,
                  thickness: 1.5,
                  color: Color(0xff3AAFA9),
                ),
              ),
              new ListTile(
                  leading: new Icon(Icons.perm_phone_msg),
                  title: new Text(
                    "Contact Us",
                    style: TextStyle(
                      fontFamily: 'Galada',
                      letterSpacing: 1.0,
                      color: Colors.black,
                      fontSize: 20.0,
                      //  fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    _opennewpage("Contact Us");
                  }),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: Divider(
                  height: 5.0,
                  thickness: 1.5,
                  color: Color(0xff3AAFA9),
                ),
              ),
            ],
          ),
        ),
        // ),
      ),
    );
  }

  void _opennewpage(s) {
    Navigator.of(context).push(
      new MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return new Scaffold(
            appBar: new AppBar(
              title: new Text(s),
            ),
            body: new Center(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 19.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 19.0),
                          child: FlutterLogo(
                            size: 70.0,
                          ),
                        ),
                        Text(
                          'Welcome to ' + s,
                          textAlign: TextAlign.center,
                          style: new TextStyle(fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

//  drawer: new Container(
//           constraints: new BoxConstraints.expand(
//             width: MediaQuery.of(context).size.width - 110,
//           ),
//           color: Colors.white,
//           alignment: Alignment.center,
//           child: new ListView(
//             padding: EdgeInsets.zero,
//             children: <Widget>[
//               new UserAccountsDrawerHeader(
//                 /* accountName: new Text(
//                   'techSarvesh',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),*/
//                 // margin: EdgeInsets.all(2),
//                 arrowColor: Colors.teal,

//                 accountName: new Container(
//                   margin: EdgeInsets.only(top: 28),
//                   child: RaisedButton(
//                     color: Colors.teal,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20.0)),
//                     textColor: Colors.white,
//                     child: Text(
//                       'techSarvesh',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     onPressed: () {
//                       _opennewpage("My Profile");
//                     },
//                   ),
//                 ),
//                 accountEmail: new Text(
//                   'sarveshtiwariDEV@gmail.com',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 decoration: new BoxDecoration(
//                   image: new DecorationImage(
//                     image: new AssetImage('images/lake.jpg'),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 currentAccountPicture: CircleAvatar(
//                   radius: 25.0,
//                   backgroundImage: AssetImage(
//                     'images/img.png',
//                   ),
//                 ),
//               ),
//               new ListTile(
//                   leading: new Icon(Icons.category),
//                   title: new Text(
//                     "Categories",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 20.0,
//                       fontFamily: 'Galada',
//                       letterSpacing: 1.0,
//                       // fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => Categories()),
//                     );
//                   }),
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
//                 child: Divider(
//                   height: 5.0,
//                   thickness: 1.5,
//                   color: Color(0xff3AAFA9),
//                 ),
//               ),
//               new ListTile(
//                   leading: new Icon(Icons.bookmark),
//                   title: new Text(
//                     "Library",
//                     style: TextStyle(
//                       fontFamily: 'Galada',
//                       letterSpacing: 1.0,
//                       color: Colors.black,
//                       fontSize: 20.0,
//                       // fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   onTap: () {
//                     _opennewpage("Library");
//                   }),
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
//                 child: Divider(
//                   height: 5.0,
//                   thickness: 1.5,
//                   color: Color(0xff3AAFA9),
//                 ),
//               ),
//               new ListTile(
//                   leading: new Icon(Icons.settings),
//                   title: new Text(
//                     "Settings",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 20.0,
//                       fontFamily: 'Galada',
//                       letterSpacing: 1.0,
//                       //fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   onTap: () {
//                     _opennewpage("Settings");
//                   }),
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
//                 child: Divider(
//                   height: 5.0,
//                   thickness: 1.5,
//                   color: Color(0xff3AAFA9),
//                 ),
//               ),
//               new ListTile(
//                   leading: new Icon(Icons.help),
//                   title: new Text(
//                     "Help",
//                     style: TextStyle(
//                       fontFamily: 'Galada',
//                       letterSpacing: 1.0,
//                       color: Colors.black,
//                       fontSize: 20.0,
//                       //fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   onTap: () {
//                     _opennewpage("Help");
//                   }),
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
//                 child: Divider(
//                   height: 5.0,
//                   thickness: 1.5,
//                   color: Color(0xff3AAFA9),
//                 ),
//               ),
//               new ListTile(
//                   leading: new Icon(Icons.perm_phone_msg),
//                   title: new Text(
//                     "Contact Us",
//                     style: TextStyle(
//                       fontFamily: 'Galada',
//                       letterSpacing: 1.0,
//                       color: Colors.black,
//                       fontSize: 20.0,
//                       //  fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   onTap: () {
//                     _opennewpage("Contact Us");
//                   }),
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
//                 child: Divider(
//                   height: 5.0,
//                   thickness: 1.5,
//                   color: Color(0xff3AAFA9),
//                 ),
//               ),
//             ],
//           ),
//         ),
