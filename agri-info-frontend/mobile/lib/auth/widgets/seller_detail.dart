import '../../libs.dart';

class seller_Detail extends StatefulWidget {
  const seller_Detail({Key? key}) : super(key: key);

  @override
  State<seller_Detail> createState() => _seller_State();
}

class _seller_State extends State<seller_Detail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Text("As Buyer"),
          ClipRRect(
            borderRadius: BorderRadius.circular(20), //only(
            // topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            child: Container(
              margin: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width,
              height: 550,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: 15,
                        left: 8), //symmetric(vertical: 10, horizontal: 10),
                    child: Icon(
                      Icons.arrow_back,
                      size: 28,
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 50,
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 40, bottom: 5),
                              child: Text(
                                "Detail",
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 15.0,
                                      color: Colors.black,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                    Shadow(
                                      color: Color(0x21aba5),
                                      blurRadius: 10.0,
                                      offset: Offset(-10.0, 5.0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              child: Row(children: [
                                Text(
                                  "Quantity: ",
                                  style: TextStyle(
                                      fontFamily: "Roboto", fontSize: 14),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text("500 quntal",
                                      style: TextStyle(
                                          fontFamily: "Roboto",
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                )
                              ]),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              child: Row(children: [
                                Text(
                                  "Particpant: ",
                                  style: TextStyle(
                                      fontFamily: "Roboto", fontSize: 14),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text("Abebe Gemechu",
                                      style: TextStyle(
                                          fontFamily: "Roboto",
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                )
                              ]),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              child: Row(children: [
                                Text(
                                  "Qebd: ",
                                  style: TextStyle(
                                      fontFamily: "Roboto", fontSize: 14),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text("1100 Birr",
                                      style: TextStyle(
                                          fontFamily: "Roboto",
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                )
                              ]),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              child: Row(children: [
                                Text(
                                  "Expire date: ",
                                  style: TextStyle(
                                      fontFamily: "Roboto", fontSize: 14),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text("7/4/2014 E.c",
                                      style: TextStyle(
                                          fontFamily: "Roboto",
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                )
                              ]),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              child: Row(children: [
                                Text(
                                  "Compensation For Loss: ",
                                  style: TextStyle(
                                      fontFamily: "Roboto", fontSize: 14),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text("500 Birr",
                                      style: TextStyle(
                                          fontFamily: "Roboto",
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                )
                              ]),
                            ),
                          ]),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 0),
                    alignment: Alignment.center,
                    width: 300,
                    child: Divider(
                      color: Colors.black45,
                      thickness: 1,
                      height: 50,
                    ),
                  ),
                  Text(
                    "Barcode",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 15.0,
                          color: Colors.black,
                          offset: Offset(5.0, 5.0),
                        ),
                        Shadow(
                          color: Color(0x21aba5),
                          blurRadius: 10.0,
                          offset: Offset(-10.0, 5.0),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/image_assets/barcod.png",
                    height: 150,
                    width: 150,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 100, top: 20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                Text(
                                  "The secret code is: ",
                                  style: TextStyle(
                                      fontFamily: "Roboto", fontSize: 14),
                                ),
                                Text(
                                  "123456",
                                  style: TextStyle(
                                      fontFamily: "Roboto",
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          //
                          Container(
                            margin: EdgeInsets.only(left: 35, top: 5),
                            child: Row(
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Status: ",
                                      style: TextStyle(
                                          fontFamily: "Roboto", fontSize: 14)),
                                  Container(
                                    margin: EdgeInsets.only(left: 3),
                                    child: Text(
                                      "Active",
                                      style: TextStyle(
                                          fontFamily: "Roboto",
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green),
                                    ),
                                  )
                                ]),
                          ),
                        ]),
                  ) //
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
