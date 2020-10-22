import 'package:flutter/material.dart';

class barMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0.5,
      child: Column(
        children: <Widget>[
          //Padding(padding: EdgeInsets.all(10)),
          UserAccountsDrawerHeader(

            currentAccountPicture: CircleAvatar(
              child:Image.asset("lib/assets/images/myPhoto.png",
                fit: BoxFit.contain,
              ),

    ),

            accountName: Text("Mohmed Mahmoud"),
            accountEmail: Text("bouhmed1996@gmail.com"),
            margin: EdgeInsets.all(10),
          ),
          Divider(
            height: 4,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            title: Text("Home"),
            hoverColor: Color.fromRGBO(37, 164, 242, 1),
            onTap: () {
             // Navigator.of(context).pushNamed("home");
            },
            leading: CircleAvatar(child: Icon(Icons.home)),
            isThreeLine: false,
          ),
          Divider(
            height:4,
            indent: 10,
            endIndent: 10,
          ),


          ListTile(
            title: Text("About"),
            hoverColor: Color.fromRGBO(37, 164, 242, 1),
            onTap: () {
              //Navigator.of(context).pushNamed("categories");
            },
            leading: CircleAvatar(
              child: Icon(Icons.category),
            ),
          ),
          Divider(
            height:4,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            title: Text("Contact"),
            hoverColor: Color.fromRGBO(37, 164, 242, 1),
            onTap: () {},
            leading: CircleAvatar(
              child: Icon(Icons.contact_mail_sharp),
            ),
          ),
          Divider(
            height:4,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            hoverColor: Color.fromRGBO(37, 164, 242, 1),
            title: Text("Works"),
            onTap: () {},
            leading: CircleAvatar(
              child: Icon(Icons.work),
            ),
          ),
        ],
      ),
    );
  }
}
