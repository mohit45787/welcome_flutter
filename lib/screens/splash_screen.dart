import 'dart:async';

import 'package:flutter/material.dart';
import 'package:welcomeflutter/utils/constants.dart';
//import 'package:welcomeflutter/utils/Constants.dart';
import 'package:welcomeflutter/utils/navigators.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
   Timer(Duration(seconds: 3), () => Navigators.goToLogin(context)); //splash timer for 3 secounds
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.orangeAccent),
            child: Image(
                image: NetworkImage('https://i.pinimg.com/564x/53/5d/5a/535d5a3cb54b463057fc76c44ef56393.jpg')  //Fetch Image From NetworkURL
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 50.0,

                        child: Image(
                          image: AssetImage('assets/samsung_logo.png'),  //Fetch Image From Assets
                          color: Colors.white
                        )
                        /*child: Icon(
                          Icons.add_box,
                          color: Colors.white,
                          size: 70.0,
                        ),*/
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                      ),
                      /*Text(
                        "samsung",//Constants.name
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 34.0),
                      )*/
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    /*CircularProgressIndicator(),*/
                    Padding(
                      padding: EdgeInsets.only(top: 180.0),
                    ),
                    Text(
                      Constants.text, //"World's No. 1 Brand",
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0,
                          color: Colors.black),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
