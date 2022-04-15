import '../../libs.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Card(
        elevation: 6,
        color: Color(0xFFEFFBFF),
        child: Container(
          //alignment: Alignment.center,
          // height: 150,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 6,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        margin: EdgeInsets.symmetric(horizontal: 120),
                        child: Text("ነጭ ጤፍ",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text("የምርት ቦታ :",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold))),
                          Text(
                            "ሁሉም",
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                        child: Row(
                          children: [
                            Text("ዋጋ :",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold)),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 45),
                              child: Text(
                                "1000 ብር",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("ከ ",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold)),
                            Text("10 ደቂቃ ",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF29DE92))),
                            Text(
                              "በፊት",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 45),
                  child: SvgPicture.asset(
                    'assets/icons/chevron_right_black_24dp.svg',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
