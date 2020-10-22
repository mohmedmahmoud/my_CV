import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Color.fromRGBO(37, 164, 242, 1),
            style: BorderStyle.solid,
            width: 3),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 55,
      // color: Color.fromRGBO(37, 164, 242, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Text(
              "MohmedM",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            flex: 4,
          ),
          Expanded(
            child: RaisedButton(
              onPressed: () {},
              color: Colors.black26,
              hoverColor: Color.fromRGBO(37, 164, 242, 1),
              child: Text(
                "Home",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: RaisedButton(
              onPressed: () {},
              color: Colors.black26,
              hoverColor: Color.fromRGBO(37, 164, 242, 1),
              child: Text(
                "About",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: RaisedButton(
              onPressed: () {},
              color: Colors.black26,
              hoverColor: Color.fromRGBO(37, 164, 242, 1),
              child: Text(
                "Contact",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: RaisedButton(
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
          ),
        ],
      ),
    );
  }
}
