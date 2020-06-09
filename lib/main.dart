import 'package:flutter/material.dart';
import 'package:welcomeflutter/screens/auth_module/login_screen.dart';
import 'package:welcomeflutter/screens/signup_screen.dart';
import 'package:welcomeflutter/screens/splash_screen.dart';


var routes = <String, WidgetBuilder>{
  "/login": (BuildContext context) => LoginScreen(),
  "/signup": (BuildContext context) => SignupScreen(),
};

void main() => runApp(new MaterialApp(
    theme: ThemeData(primaryColor: Colors.red, accentColor: Colors.black),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: routes));

