import 'package:flutter/widgets.dart';

import '../../libs.dart';

class update_Product extends StatefulWidget {
  const update_Product({Key? key}) : super(key: key);

  @override
  State<update_Product> createState() => _update_ProductState();
}

class _update_ProductState extends State<update_Product> {
  String dropdownValue = 'Teff';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      height: MediaQuery.of(context).size.height,
      child: Container(
        alignment: Alignment.topCenter,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Text("As Buyer"),
            ClipRRect(
              borderRadius: BorderRadius.circular(20), //only(
              // topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              child: Container(
                margin: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                height: 500,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: 20,
                          left: 15), //symmetric(vertical: 10, horizontal: 10),
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
                        left: 80,
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 37, bottom: 15),
                              child: Text(
                                "Update Product",
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
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Row(children: [
                                Text(
                                  "Product Item: ",
                                  style: TextStyle(
                                      fontFamily: "Roboto",
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Container(
                                    margin: EdgeInsets.only(left: 15),
                                    height: 35,
                                    width: 120,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Card(
                                        child: Container(
                                          color: Colors.grey.shade200,
                                          alignment: Alignment.centerLeft,
                                          child: DropdownButton<String>(
                                            value: dropdownValue,
                                            alignment: Alignment.centerLeft,
                                            icon: Container(
                                              color: Colors.grey.shade200,
                                              margin: EdgeInsets.only(left: 25),
                                              child: const Icon(
                                                Icons.expand_more,
                                                size: 24,
                                              ),
                                            ),
                                            //elevation: 10,
                                            style: const TextStyle(
                                              color: Colors.black,
                                            ),
                                            // underline: Container(
                                            //   height: 2,
                                            //   color: Color(0xff21aba5),
                                            // ),
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                dropdownValue = newValue!;
                                              });
                                            },
                                            items: <String>[
                                              'Mashla',
                                              'Bekolo',
                                              'Teff',
                                              'Snde'
                                            ].map<DropdownMenuItem<String>>(
                                                (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Container(
                                                    margin: EdgeInsets.only(
                                                        left: 15),

                                                    // alignment: Alignment.center,
                                                    child: Text(
                                                      value,
                                                      style: TextStyle(
                                                          fontFamily: "Roboto"),
                                                    )),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ]),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              child: Row(children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Amount: ",
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  width: 160,
                                  height: 35,
                                  color: Colors.grey.shade200,
                                  margin: EdgeInsets.only(left: 35),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: const OutlineInputBorder(),
                                      labelText: 'enter the amount',
                                      // The MaterialStateProperty's value is a text style that is orange
                                      // by default, but the theme's error color if the input decorator
                                      // is in its error state.
                                      labelStyle:
                                          MaterialStateTextStyle.resolveWith(
                                              (Set<MaterialState> states) {
                                        final Color color =
                                            states.contains(MaterialState.error)
                                                ? Theme.of(context).errorColor
                                                : Colors.black;
                                        return TextStyle(
                                            color: color,
                                            letterSpacing: 1.3,
                                            fontFamily: "Roboto",
                                            fontSize: 14);
                                      }),
                                    ),
                                    validator: (String? value) {
                                      if (value == null || value == '') {
                                        return 'fill the amount';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ]),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 10,
                              ),
                              child: Row(children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    "Price: ",
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  width: 160,
                                  height: 35,
                                  color: Colors.grey.shade200,
                                  margin: EdgeInsets.only(
                                    left: 53,
                                  ),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(0)),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: const OutlineInputBorder(),
                                        labelText: 'enter the price',
                                        // The MaterialStateProperty's value is a text style that is orange
                                        // by default, but the theme's error color if the input decorator
                                        // is in its error state.
                                        labelStyle:
                                            MaterialStateTextStyle.resolveWith(
                                                (Set<MaterialState> states) {
                                          final Color color = states
                                                  .contains(MaterialState.error)
                                              ? Theme.of(context).errorColor
                                              : Colors.black;
                                          return TextStyle(
                                              color: color,
                                              letterSpacing: 1.3,
                                              fontFamily: "Roboto",
                                              fontSize: 14);
                                        }),
                                      ),
                                      validator: (String? value) {
                                        if (value == null || value == '') {
                                          return 'fill the price';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 10,
                              ),
                              child: Row(children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    "Photo: ",
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 40),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          // Card(
                                          //   clipBehavior:
                                          //       Clip.antiAliasWithSaveLayer,
                                          //   shape: RoundedRectangleBorder(
                                          //       borderRadius:
                                          //           BorderRadius.circular(10),
                                          //       side: BorderSide(
                                          //           color: Colors.white24)),
                                          //   child: Image.asset(
                                          //     "assets/image_assets/teff.jpg",
                                          //     height: 50,
                                          //     width: 50,
                                          //   ),
                                          // ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Container(
                                              child: Image.asset(
                                                "assets/image_assets/teff.jpg",
                                                fit: BoxFit.fill,
                                                height: 50,
                                                width: 50,
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Container(
                                              margin: EdgeInsets.only(top: 2),
                                              child: Image.asset(
                                                "assets/image_assets/teff.jpg",
                                                fit: BoxFit.fill,
                                                height: 50,
                                                width: 50,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Stack(children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                left: 3, top: 4),
                                            child: Image.asset(
                                              "assets/image_assets/teff.jpg",
                                              fit: BoxFit.fill,
                                              height: 100,
                                              width: 100,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 25,
                                          height: 25,
                                          margin: EdgeInsets.only(
                                              left: 80, top: 80),
                                          //s alignment: Alignment.bottomRight,
                                          child: FloatingActionButton(
                                            onPressed: () {},
                                            // tooltip: 'Increment',
                                            child: const Icon(Icons.add),
                                          ),
                                        ),
                                      ]),
                                    ],
                                  ),
                                ),
                              ]),
                            ),
                            // ElevatedButton(
                            //     onPressed: () {}, child: Text("Update"))
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 90),
                      width: 170,
                      height: 40,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff21aba5),
                              onPrimary: Colors.white,
                              onSurface: Colors.grey.shade200),
                          child: Text(
                            "Update",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )),
                    )
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
