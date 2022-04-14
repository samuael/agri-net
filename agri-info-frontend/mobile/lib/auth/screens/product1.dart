import 'package:flutter/material.dart';
import '../../libs.dart';

class AuthScreen1 extends StatefulWidget {
  static const String RouteName = "/auth_screen";

  const AuthScreen1({Key? key}) : super(key: key);

  @override
  State<AuthScreen1> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen1> {
  bool right = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Product || Message"),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            ),
          ],
          elevation: 0,
          centerTitle: true,
        ),
        drawer: HomeNavigationDrawer(),
        body: ListView(children: [
          Column(children: [
            ProductItem(),
            ProductItem(),
            ProductItem(),
            ProductItem(),
            ProductItem(),
            ProductItem(),
            ProductItem(),
            ProductItem(),
          ])
        ]));
  }
}
