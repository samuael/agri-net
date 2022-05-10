import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile/auth/widgets/agri-info-drawer.dart';
import 'package:mobile/auth/widgets/subscription.dart';
import '../../libs.dart';

class SubScreen1 extends StatefulWidget {
  static const String RouteName = "/auth_screen2";

  const SubScreen1({Key? key}) : super(key: key);

  @override
  State<SubScreen1> createState() => _SubScreen1State();
}

class _SubScreen1State extends State<SubScreen1> {
  bool right = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Subscription Page"),
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
        drawer: Agri_info_NavigationDrawer(),
        body: ListView(
          children: [
            Column(children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                width: 300,
                child: TextField(
                  cursorColor: Theme.of(context).primaryColorLight,
                  style: TextStyle(),
                  decoration: InputDecoration(
                    labelText: "subscription",
                    fillColor: Colors.lightBlue,
                    hoverColor: Colors.lightBlue,
                    hintText: "search...",
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightBlue,
                        style: BorderStyle.none,
                      ),
                    ),
                  ),
                ),
              ),
              SubscriptionPage(),
              SubscriptionPage(),
              SubscriptionPage(),
              SubscriptionPage(),
              SubscriptionPage(),
              SubscriptionPage(),
              SubscriptionPage(),
              SubscriptionPage(),
            ]),
          ],
        ));
  }
}
