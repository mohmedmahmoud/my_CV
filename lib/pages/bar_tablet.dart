import 'package:flutter/material.dart';

class barTablet extends StatelessWidget {
  const barTablet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQ = MediaQuery.of(context).size.width;
    return Container(
      width: mediaQ * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
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
              "lib/assets/images/myLogo.gif",
              fit: BoxFit.cover,
            ),
          ),
          RaisedButton(
            onPressed: () {},
            hoverColor: Color.fromRGBO(37, 164, 242, 1),
            color: Colors.black26,
            child: Text(
              "Home",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {},
            hoverColor: Color.fromRGBO(37, 164, 242, 1),
            color: Colors.black26,
            child: Text(
              "About",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {},
            hoverColor: Color.fromRGBO(37, 164, 242, 1),
            color: Colors.black26,
            child: Text(
              "Contact",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {},
            hoverColor: Color.fromRGBO(37, 164, 242, 1),
            color: Colors.black26,
            child: Text(
              "Works",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
