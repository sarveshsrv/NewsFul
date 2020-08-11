import 'dart:ui';

//import 'package:Project101/screens/HomePage.dart';
import 'package:flutter/material.dart';
//import 'main.dart';

class Categories extends StatefulWidget {
  Categories({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _CategoriesState createState() => new _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
      ),
      body: SafeArea(
          child: Center(
        child: Container(
            color: Colors.white,
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                GestureDetector(
                    child: Card(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: <Widget>[
                          // Max Size
                          Image(
                            image: AssetImage('images/sports.jpg'),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              margin: EdgeInsets.all(10.0),
                              child: Text(
                                "Sports",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      //activity
                    }),
                GestureDetector(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(children: <Widget>[
                        // Max Size
                        Container(
                          child: Image(
                            image: AssetImage('images/politics.jpg'),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            child: Text(
                              "Politics",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ]),
                      color: Colors.black,
                    ),
                    onTap: () {
                      //activity
                    }),
                GestureDetector(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: <Widget>[
                          // Max Size
                          Container(
                            child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage('images/business.jpg'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              margin: EdgeInsets.all(10.0),
                              child: Text(
                                "Business",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      color: Colors.black,
                    ),
                    onTap: () {
                      //activity
                    }),
                GestureDetector(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(children: <Widget>[
                        // Max Size
                        Container(
                          child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage('images/ENTERTAINMENT.jpg'),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            child: Text(
                              "Entertainment",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ]),
                      color: Colors.black,
                    ),
                    onTap: () {
                      //activity
                    }),
                GestureDetector(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(children: <Widget>[
                        // Max Size
                        Container(
                          child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage('images/Technology.jpg'),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            child: Text(
                              "Technology",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ]),
                      color: Colors.black,
                    ),
                    onTap: () {
                      //activity
                    }),
                GestureDetector(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(children: <Widget>[
                        // Max Size
                        Container(
                          child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage('images/fashion.jpg'),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            child: Text(
                              "Fashion",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ]),
                      color: Color(0xfffca308),
                    ),
                    onTap: () {
                      //activity
                    }),
              ],
            )),
      )),
    );
  }
}
