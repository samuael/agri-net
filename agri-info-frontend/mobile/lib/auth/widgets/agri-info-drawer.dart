import 'package:flutter_svg/svg.dart';
import 'package:mobile/auth/screens/subScreen.dart';

import "../../libs.dart";

class Agri_info_NavigationDrawer extends StatelessWidget {
  Agri_info_NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xff00000),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  color: Color(0xff21aba5),
                  child: Column(
                    children: [
                      Container(
                        color: Color(0xffffffff),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(100),
                          ),
                          child: Container(
                            color: Color(0xFF21aba5),
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
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 120, vertical: 40),
                  child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.grey.shade200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset("assets/image_assets/user1.jpg"),
                      )),
                ),
                // backgroundImage:
                //     AssetImage('assets/image_assets/user1.jpg')),
                Container(
                    margin: EdgeInsets.only(top: 135, left: 90),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "nathyalem@aait.com",
                      style: TextStyle(
                          fontFamily: "Roboto", fontStyle: FontStyle.italic),
                    )),
              ],
            ),
            Container(
              color: Color(0xff21aba5),
              height: 530,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(SubScreen1.RouteName);
                      },
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 20),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/subscriptions_black_24dp.svg',
                                color: Colors.white,
                                width: 20,
                                height: 20,
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "Subscription",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          )),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/settings_black_24dp (1).svg",
                            color: Colors.white,
                            width: 20,
                            height: 20,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Settings",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 7),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/logout_black_24dp (1).svg',
                              color: Colors.white,
                              width: 20,
                              height: 20,
                            ),
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "Logout",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight
                                          .bold), //"Times New Roman"),
                                ))
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
