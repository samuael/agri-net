import 'package:flutter_svg/svg.dart';

import "../../libs.dart";

class Agri_info_NavigationDrawer extends StatelessWidget {
  Agri_info_NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.green,
              child: Column(
                children: [
                  Image.asset(
                    "assets/image_assets/agri_net_final_temporary_logo.png",
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    color: Colors.white,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100),
                      ),
                      child: Container(
                        color: Colors.green,
                        height: 100,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                    ),
                    child: Container(
                      height: 100,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                            'assets/icons/subscriptions_black_24dp.svg'),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            "Subscription",
                            style: TextStyle(fontSize: 21),
                          ),
                        )
                      ],
                    )),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                          "assets/icons/settings_black_24dp (1).svg"),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          "Settings",
                          style: TextStyle(fontSize: 21),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                            'assets/icons/logout_black_24dp (1).svg'),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                              "Logout",
                              style: TextStyle(fontSize: 21),
                            ))
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
