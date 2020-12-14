import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI Challenge',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FlutterLogo(
          colors: Colors.green,
          size: 25.0,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
          color: Colors.grey,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                  alignment: Alignment(0.0, -0.4),
                  color: Colors.white,
                  height: 100.0,
                  child: Text(
                    'Get Coaching',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20.0,
                    ),
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Colors.grey,
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 7.0),
                          child: Text(
                            'YOU HAVE',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Quicksand',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding:
                                    EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 25.0),
                                child: Text(
                                  '206',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Quicksand',
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 18.0),
                                child: Stack(
                                  alignment: Alignment(0.4, -0.7),
                                  children: <Widget>[
                                    RotationTransition(
                                      turns: AlwaysStoppedAnimation(12 / 360),
                                      child: Container(
                                        padding: EdgeInsets.only(
                                            left: 2.5, top: 0.0),
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                    RotationTransition(
                                      turns: AlwaysStoppedAnimation(-8 / 360),
                                      child: Container(
                                        padding: EdgeInsets.only(
                                            top: 8.0, right: 3.0),
                                        child: Stack(
                                          children: <Widget>[
                                            Positioned(
                                              left: 0.0,
                                              bottom: 0.0,
                                              child: Icon(
                                                Icons.favorite,
                                                color: Colors.white,
                                                size: 20,
                                              ),
                                            ),
                                            Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                              size: 18,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 60.0,
                    ),
                    Container(
                      width: 125.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          'Buy more',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'MY COACHES',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                ),
                Text(
                  'VIEW PAST SESSIONS',
                  style: TextStyle(
                    color: Colors.green,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GridView.count(
            primary: false,
            crossAxisCount: 2,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: <Widget>[
              _buildCard('Tom', 'Available', 1),
              _buildCard('Monika', 'Away', 2),
              _buildCard('Chris', 'Away', 3),
              _buildCard('Walt', 'Available', 4),
              _buildCard('jack', 'Away', 5),
              _buildCard('Sara', 'Away', 6),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String name, String status, int cardIndex) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 7.0,
      child: Column(
        children: <Widget>[
          SizedBox(height: 12.0),
          Stack(
            children: <Widget>[
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.green,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/$cardIndex.jpeg'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 40.0),
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: status == 'Away' ? Colors.amber : Colors.green,
                  border: Border.all(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 2.0),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            name,
            style: TextStyle(
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
          Text(
            status,
            style: TextStyle(
              color: Colors.grey,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
              fontSize: 12.0,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: Container(
              width: 175.0,
              decoration: BoxDecoration(
                color: status == 'Away' ? Colors.grey : Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
              child: Center(
                child: Text('Request'),
              ),
            ),
          ),
        ],
      ),
      margin: cardIndex.isEven
          ? EdgeInsets.fromLTRB(10.0, 0, 25.0, 10.0)
          : EdgeInsets.fromLTRB(25, 0, 5, 10),
    );
  }
}
