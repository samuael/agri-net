import 'package:mobile/auth/screens/product1.dart';
import 'package:mobile/auth/widgets/agri-info-drawer.dart';
import 'package:mobile/auth/widgets/buyer_detail.dart';
import 'package:mobile/auth/widgets/seller_detail.dart';
import 'package:mobile/auth/widgets/messages.dart';
import 'package:mobile/auth/widgets/seller_detail.dart';
import 'package:mobile/auth/widgets/update_product.dart';

import '../../libs.dart';

class Message_Screen extends StatefulWidget {
  static const String RouteName = '/message_screen';
  const Message_Screen({Key? key}) : super(key: key);

  @override
  State<Message_Screen> createState() => _MessageState_Screen();
}

class _MessageState_Screen extends State<Message_Screen> {
  bool isSelected = true;
  bool isSelectedMessage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xbae8e8),
      appBar: AppBar(
        title: Text("Agri Info"),
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
      body: Column(
        children: [
          Container(
              color: Theme.of(context).primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            isSelected = !isSelected;
                          });
                        },
                        child: (isSelected == false)
                            ? Row(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    // width: 85,
                                    // height: 27,
                                    color: Color(0xff21aba5),
                                    padding: EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Product",
                                      //textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Theme.of(context).canvasColor,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Roboto",
                                      ),
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.home,
                                  color: Theme.of(context).canvasColor,
                                ),
                              ])
                            : Row(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    // width: 85,
                                    // height: 27,
                                    color: Theme.of(context).primaryColorDark,
                                    padding: EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Product",
                                      //textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: "Roboto",
                                        color: Colors.white54,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.home,
                                  color: Colors.white54,
                                ),
                              ])),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isSelected = !isSelected;
                        });
                      },
                      child: (isSelected == true)
                          ? Row(children: [
                              Text(
                                "Messages ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).canvasColor,
                                  fontFamily: "Roboto",
                                ),
                              ),
                              Icon(
                                Icons.message,
                                color: Theme.of(context).canvasColor,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Text(
                                    "5",
                                    style: TextStyle(
                                      backgroundColor: Colors.red,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ])
                          : Row(children: [
                              Text(
                                "Messages ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white54,
                                  fontFamily: "Roboto",
                                ),
                              ),
                              Icon(
                                Icons.message,
                                color: Colors.white54,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Text(
                                    "5",
                                    style: TextStyle(
                                      backgroundColor: Colors.red,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                    ),
                  ),
                ],
              )),
          Container(
            height: MediaQuery.of(context).size.height * 0.85,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ProductItem(),
                  // seller_Detail(),
                  //update_Product(),
                  //buyer_Detail(),
                  // Message(),
                  // Message(),
                  // Message(),
                  // Message(),
                  // Message(),
                  // Message(),
                  // Message(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
