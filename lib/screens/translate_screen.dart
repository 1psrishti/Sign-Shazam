import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: TranslateScreen(text: '',),
//     );
//   }
// }

class TranslateScreen extends StatefulWidget {
  TranslateScreen({Key key, @required this.text}) : super(key: key);
  final String text;

  @override
  _TranslateScreenState createState() => _TranslateScreenState();
}

class _TranslateScreenState extends State<TranslateScreen> {


  TextEditingController textEditingController = new TextEditingController();
  var output = "";

  var translator = GoogleTranslator();

  String dropdownValue;
  static const Map<String, String> lang = {
    "Albanian": "af",
    "Arabic": "ar",
    "Bengali": "bn",
    "Bulgarian": "bg",
    "Chinese": "zh",
    "Czech": "cs",
    "Dutch": "nl",
    "Filipino": "tl",
    "Finnish": "fi",
    "French": "fr",
    "German": "de",
    "Greek": "el",
    "Gujarati": "gu",
    "Hawaiian": "haw",
    "Hindi": "hi",
    "Hungarian": "hu",
    "Indonesian": "id",
    "Irish": "ga",
    "Italian": "it",
    "Japanese": "ja",
    "Kannada": "kn",
    "Korean": "ko",
    "Latin": "la",
    "Malayalam": "ml",
    "Marathi": "mr",
    "Mongolian": "mn",
    "Burmese": "my",
    "Nepali": "ne",
    "Norwegian": "no",
    "Oriya": "or",
    "Persian": "fa",
    "Polish": "pl",
    "Portuguese ": "pt",
    "Punjabi": "pa",
    "Romanian": "ro",
    "Russian": "ru",
    "Serbian": "sr",
    "Sinhalese": "si",
    "Slovak": "sk",
    "Somali": "so",
    "Spanish": "es",
    "Swedish": "sv",
    "Tamil": "ta",
    "Telugu": "te",
    "Thai": "th",
    "Turkish": "tr",
    "Ukrainian": "uk",
    "Urdu": "ur",
    "Vietnamese": "vi",
    "Welsh": "cy",
  };

  void trans() {
    translator.translate(widget.text, from:"en", to: "$dropdownValue").then((value) {
      setState(() {
        output = value.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Translate"),
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
                color: Color(0xff375079),
                child: Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Column(
                    children: [
                      Text(
                        widget.text,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 70),
                      MaterialButton(
                        onPressed: (){
                          setState(() {
                            trans();
                          });
                        },
                        child: Text("Translate"),
                        color: Colors.grey[200],
                      ),
                      SizedBox(height: 35),
                      DropdownButton(
                        hint: Text("Select language"),
                        underline: Container(
                          height: 2,
                          color: Colors.white,
                        ),
                        value: dropdownValue,
                        onChanged: (newValue){
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: lang.map((string, value){
                          return MapEntry(string, DropdownMenuItem<String>(
                            value: value,
                            child: Text(string),
                          ),
                          );
                        }).values.toList(),
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
                        output.toString(),
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