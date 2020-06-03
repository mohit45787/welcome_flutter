import 'package:flutter/material.dart';

class Navigators {
  static void goToLogin(BuildContext context) {
    Navigator.pushNamed(context, "/login");
  }

  static void goToSignup(BuildContext context) {
    Navigator.pushNamed(context, "/signup");
  }
}
