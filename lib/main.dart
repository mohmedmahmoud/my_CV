import 'package:flutter/material.dart';
import 'package:my_cv/pages/home_desctop.dart';
import 'package:device_preview/device_preview.dart';
import 'package:my_cv/pages/home_mobile.dart';
import 'package:my_cv/pages/home_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() => runApp(
      DevicePreview(
        enabled: false,
        builder: (context) => myCV(),
      ),
    );

class myCV extends StatefulWidget {
  myCV({Key key}) : super(key: key);

  @override
  _myCVState createState() => _myCVState();
}

class _myCVState extends State<myCV> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.of(context).locale, // <--- /!\ Add the locale
      builder: DevicePreview.appBuilder,
      theme: ThemeData.dark(),
      home: Response(),
      debugShowCheckedModeBanner: false,
      routes: {"home": (context) => MyHomePageDesktop()},
    );
  }
}

Widget Response() {
  return ResponsiveBuilder(
    builder: (context, sizingInformation) {
      // Check the sizing information here and return your UI
      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return MyHomePageDesktop();
      }

      if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
        return HomePageTablet();
      }

      if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return HomePageMobile();
      }

      return Container(color: Colors.purple);
    },
  );
}
