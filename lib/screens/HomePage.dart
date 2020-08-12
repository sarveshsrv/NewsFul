import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'drawer.dart';

Future<List<Post>> fetchPost() async {
  final response =
      await http.get('http://newzsort.herokuapp.com/categories2/post');
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((post) => new Post.fromJson(post)).toList();
  } else {
    throw Exception('Failed to load ');
  }
}

class Post {
  final String title;
  String urlToImage;
  final String time;
  Post({this.title, this.urlToImage, this.time});
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      title: json['title'],
      urlToImage: json['urlToImage'],
      time: json['publishedAt'],
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        // leading: IconButton(
        //     icon: Icon(Icons.album),
        //     onPressed: () {
        //       // setState(() {
        //       //   NavDrawer();
        //       // });

        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => NavDrawer()),
        //       );
        //     }),
        title: new Text(widget.title),
      ),
      drawer: NavDrawer(),
      body: FutureBuilder<List<Post>>(
          future: fetchPost(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  if (snapshot.data[index].urlToImage == null) {
                    snapshot.data[index].urlToImage =
                        "https://images.wsj.net/im-210721/social"; //temporary image, must be set in case url is null
                  }
                  String date = snapshot.data[index].time;
                  String date1 = "",
                      time1 =
                          ""; //code to separate date and time from json response
                  int i;
                  for (i = 0; i < date.length; i++) {
                    if (date[i] == 'T') {
                      break;
                    }
                    date1 += date[i];
                  }
                  for (int j = 0; j < 8; j++) {
                    if (date[j + i + 1] == 'Z') {
                      break;
                    }
                    time1 += date[j + i + 1];
                  }
                  return Expanded(
                    child: Container(
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              new BorderRadius.all(Radius.circular(20.0)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(2.0, 2.0)), //shadow to container
                          ]),
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.black,
                              height: 120.0,
                              child: Image(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    snapshot.data[index].urlToImage),
                              ),
                            ),
                            flex: 2,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Expanded(
                            child: Container(
                              height: 120.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: Text(
                                        snapshot.data[index].title,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ),
                                    flex: 2,
                                  ),
                                  Divider(
                                    color: Color(0xff3AAFA9),
                                    height: 5.0,
                                    thickness: 1.0,
                                    //   indent: 20,
                                    //   endIndent: 0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        date1 + ", " + time1,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10.0,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Icon(
                                        Icons.bookmark,
                                        color: Colors.black87,
                                        size: 20.0,
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Icon(
                                        Icons.share,
                                        color: Colors.black87,
                                        size: 20.0,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            flex: 3,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }
          }),
    );
  }
}
