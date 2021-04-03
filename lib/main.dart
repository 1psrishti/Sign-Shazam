import 'package:flutter/material.dart';
import 'package:translator/translator.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController textController = new TextEditingController();
  var translatedPhrase = "";

  var translator = GoogleTranslator();

  String valueChoose;
  List listItem = ["Spanish", "French"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              flex: 2,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.blue,
                child: Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: textController,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 50),
                      MaterialButton(
                        onPressed: (){
                          setState(() {
                            translator.translate(textController.text, from: "en", to: "es").then((t) {
                              translatedPhrase = t.toString();
                            });
                          });
                        },
                        child: Text("Translate"),
                        color: Colors.grey[200],
                      ),
                      SizedBox(height: 35),
                      DropdownButton(
                        hint: Text("Select language"),
                          value: valueChoose,
                          onChanged: (newValue){
                            setState(() {
                              valueChoose = newValue;
                            });
                          },
                        items: listItem.map((valueItem){
                          return DropdownMenuItem(
                            value: valueItem,
                          child: Text(valueItem),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Column(
                    children: [
                      Text(
                        translatedPhrase,
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}