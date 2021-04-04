import 'package:flutter/material.dart';
import 'package:integration_app/screens/detectScreen.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          child: Padding(
        padding: const EdgeInsets.only(top: 150.0, left: 35),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Welcome to",
                style: TextStyle(
                  color: Color(0xFF575757),
                  fontSize: 25,
                  fontFamily: "Roboto",
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Sign Shazam!\n",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color(0xff8e1244),
                  fontSize: 25,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "This app uses \nTensorflow Lite to \ndetect alphabets \nfrom ASL.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Color(0xFF575757),
                  fontSize: 25,
                  fontFamily: "Roboto",
                ),
              ),
            ),
            SizedBox(
              height: (MediaQuery.of(context).size.height * 0.10),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.add_a_photo,
                    color: Color(0xff8e1244),
                    size: 30,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Camera detects ASL alphabets \nusing Tensorflow model.",
                      style: TextStyle(
                          color: Color(0xff8e1244),
                          fontSize: 15,
                          fontFamily: "Roboto"),
                    ),
                  ),
                ]),
            SizedBox(height: 15),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.volume_up,
                    color: Color(0xff8e1244),
                    size: 30,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Converts texts to speech\nwith a tap.",
                      style: TextStyle(
                          color: Color(0xff8e1244),
                          fontSize: 15,
                          fontFamily: "Roboto"),
                    ),
                  ),
                ]),
            SizedBox(height: 15),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.message,
                    color: Color(0xff8e1244),
                    size: 30,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Easily form sentences and \ncommunicate with others.",
                      style: TextStyle(
                          color: Color(0xff8e1244),
                          fontSize: 15,
                          fontFamily: "Roboto"),
                    ),
                  ),
                ]),
            SizedBox(height: 15),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.translate,
                    color: Color(0xff8e1244),
                    size: 30,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Translate sentences to almost \nany other language.",
                      style: TextStyle(
                          color: Color(0xff8e1244),
                          fontSize: 15,
                          fontFamily: "Roboto"),
                    ),
                  ),
                ]),
          ],
        ),
      )),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(28.0),
        child: FloatingActionButton(
          backgroundColor: Color(0xff8e1244),
          child: IconButton(
              icon: Icon(Icons.arrow_forward, color: Colors.white),
              onPressed: null),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                new MaterialPageRoute(builder: (BuildContext context) {
              return DetectScreen(title: 'Detect');
            }));
          },
        ),
      ),
    );
  }
}
