import 'package:flutter/material.dart';
import 'package:mobile/auth/widgets/agri-info-drawer.dart';
import '../../libs.dart';

class AuthScreen1 extends StatefulWidget {
  static const String RouteName = "/auth_screen1";

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
        drawer: Agri_info_NavigationDrawer(), //Agri_info_NavigationDrawer(),
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
