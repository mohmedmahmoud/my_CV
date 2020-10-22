import 'package:flutter/material.dart';
import 'package:my_cv/pages/bar_tablet.dart';

class HomePageTablet extends StatefulWidget {
  HomePageTablet({Key key}) : super(key: key);

  @override
  _HomePageTabletState createState() => _HomePageTabletState();
}

class _HomePageTabletState extends State<HomePageTablet> {
  @override
  Widget build(BuildContext context) {
    var mediaQ = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 15,
      ),
      body: Container(
        color: Colors.black87,
        child: Row(
          children: [
            barTablet(),
            Container(
              width: mediaQ * 0.8,
              child: Container(
                width: mediaQ * 0.7,
                child: Column(
                  children: [
                    Container(

                      margin: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Color.fromRGBO(37, 164, 242, 1),
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      width: mediaQ * 0.2,
                      child: Image.asset(
                        "lib/assets/images/myPhoto.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      
                      child: Column(
                        children: [
                          Text(
                            "Selam alykoum ",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white24,
                            ),
                          ),
                          Text(
                            "Hello I\'am",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white38,
                            ),
                          ),
                          Text(
                            "Mohmed",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white60,
                            ),
                          ),
                          Text(
                            "Mohmoud",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 55,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: RaisedButton(
                              child: Text('Developer'),
                              onPressed: () {},
                              color: Color.fromRGBO(37, 164, 242, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
