import 'package:integration_app/screens/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sign Shazam',
      theme: ThemeData(
        primaryColor: Color(0xff4a75e7),
      ),
      home: LandingPage(),
      // routes: {
      //   '/' : (context) =>
      // },
    );
  }
}
