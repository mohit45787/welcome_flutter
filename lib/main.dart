import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

////////////////////////////////////////////////////
class HelloWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Material(
        child: new Center(
          child: new Text("Hello world!"),
        ),
      ),
    );
  }
}

////////////////////////////////////////////////////
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //////////////
    Map<int, Color> color =
    {
      50:Color.fromRGBO(136,14,79, .1),
      100:Color.fromRGBO(136,14,79, .2),
      200:Color.fromRGBO(136,14,79, .3),
      300:Color.fromRGBO(136,14,79, .4),
      400:Color.fromRGBO(136,14,79, .5),
      500:Color.fromRGBO(136,14,79, .6),
      600:Color.fromRGBO(136,14,79, .7),
      700:Color.fromRGBO(136,14,79, .8),
      800:Color.fromRGBO(136,14,79, .9),
      900:Color.fromRGBO(136,14,79, 1),
    };
    MaterialColor colorCustom = MaterialColor(0xFF880E4F, color);
    ////////////////
    return MaterialApp(
      title: "First Flutter",
      theme: ThemeData(primarySwatch: colorCustom),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('This is row 1'),
              SizedBox(height: 10.0),
              Text('This is row 2'),
              SizedBox(height: 10.0),
              Text('This is row 1'),
              SizedBox(height: 10.0),
              Text('This is row 2'),
              SizedBox(height: 10.0),
              Text('This is row 1'),
              SizedBox(height: 10.0),
              Text('This is row 2')
            ],
          ),
        ),
      ),
    );
  }
}


///////////////////////////////////////////////////////////
class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  // Default placeholder text
  String textToShow = "I Like Flutter";
  bool isTrue = true;

  //region UpdateCenterText With bool
  void _updateText() {
    if(isTrue){
      setState(() {
        // update the text
        textToShow = "Flutter is Awesome!";
      });
      isTrue = false;
    }else{
      setState(() {
        // update the text
        textToShow = "I Like Flutter";
      });
      isTrue = true;
    }
  }
  //endregion

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mohit App"),
      ),
      body: Center(child: Text(textToShow)),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateText,
        tooltip: 'Update Text',
        child: Icon(Icons.update),
      ),
    );
  }
}
class SampleApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: SampleAppPage(),
    );
  }
}

///////////////////////////////////////////////////////////

