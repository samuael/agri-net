import '../../libs.dart';

class buyer_Detail extends StatefulWidget {
  const buyer_Detail({Key? key}) : super(key: key);

  @override
  State<buyer_Detail> createState() => _buyer_DetailState();
}

class _buyer_DetailState extends State<buyer_Detail> {
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
                    child: FlatButton(
                      child: Icon(
                        Icons.arrow_back,
                        size: 28,
                      ),
                      onPressed: () {},
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 60,
                    ),
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
                                  fontFamily: "Roboto",
                                  fontSize: 14,
                                ),
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
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Enter the code: ",
                          style: TextStyle(fontFamily: "Roboto", fontSize: 14),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            color: Colors.grey.shade200,
                            child: SizedBox(
                              width: 150,
                              height: 30,
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: '12345',
                                    labelStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: "Roboto"),
                                    border: OutlineInputBorder(),
                                    hintText: "12345",
                                    hintStyle: TextStyle(
                                        fontSize: 12, fontFamily: "Roboto")),
                              ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 4,
                              primary: Color(0xff21aba5), // background
                              onPrimary: Colors.white, // foreground
                            ),
                            onPressed: () {},
                            child: Text('Go'),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 30,
                    margin: EdgeInsets.only(top: 5),
                    color: Colors.white38,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffbae8e8),
                      ),
                      child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Report missing product",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Roboto",
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 30,
                    margin: EdgeInsets.only(top: 5),
                    color: Colors.white38,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffbae8e8),
                      ),
                      child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Report missing product",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Roboto",
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 30,
                    margin: EdgeInsets.only(top: 5),
                    color: Colors.white38,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffbae8e8),
                      ),
                      child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Report no seller",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Roboto",
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 30,
                    margin: EdgeInsets.only(top: 5),
                    color: Colors.white38,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffbae8e8),
                      ),
                      child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Separate with out selling",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Roboto",
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 30,
                    margin: EdgeInsets.only(top: 5),
                    color: Colors.white38,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffbae8e8),
                      ),
                      child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "We finish our work",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Roboto",
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
