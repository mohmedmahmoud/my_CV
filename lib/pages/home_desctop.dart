import 'package:flutter/material.dart';
import 'package:my_cv/pages/bar_desktop.dart';
import 'package:carousel_pro/carousel_pro.dart';

class MyHomePageDesktop extends StatelessWidget {
  const MyHomePageDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQ = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            NavBar(),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: mediaQ * 0.4,
                  padding: EdgeInsets.only(
                      left: mediaQ * 0.02, right: mediaQ * 0.01),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Colors.teal,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
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
                Container(
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
              ],
            ),
            SizedBox(
                height: 200.0,
                width: mediaQ * 0.6,
                child: Carousel(
                  images: [
                    Image.asset(
                      "lib/assets/images/myLogo.gif",
                      fit: BoxFit.contain,
                    ),
                    Image.asset(
                      "lib/assets/images/myLogo.gif",
                      fit: BoxFit.contain,
                    ),
                  ],
                  onImageTap: (i) {},
                  dotSize: 4.0,
                  dotSpacing: 15.0,
                  dotColor: Colors.blue,
                  indicatorBgPadding: 5.0,
                  dotBgColor: Colors.blue.withOpacity(0.5),
                  borderRadius: true,
                )),
          ],
        ),
      ),
    );
  }
}
