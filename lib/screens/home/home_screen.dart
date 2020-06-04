import 'package:flutter/material.dart';
import 'package:welcomeflutter/widgets/common_scaffold.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  var deviceSize;

  //Column1

  Widget bodyData() {
    return
      Container(
        height: 170,
      padding: EdgeInsets.all(10),
      decoration: new BoxDecoration(
          color:Colors.black,
          borderRadius: new BorderRadius.only(
              bottomRight: Radius.circular(0),
              bottomLeft: Radius.circular(190))),
    );
  }

  Widget _scaffold() => CommonScaffold(
        appTitle: "Home Screen",
        bodyData: bodyData(),
        showFAB: true,
        showDrawer: true,
        floatingIcon: Icons.person_add,
      );

  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    return _scaffold();
  }
}
