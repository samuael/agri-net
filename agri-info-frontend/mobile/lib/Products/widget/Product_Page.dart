import '../../libs.dart';

class ProductPage extends StatefulWidget {
  final String title;
  final String amounte;
  final double price;
  final String imgUrl1;
  final String imgUrl2;
  final String imgUrl3;
  final String PostedOn;
  const ProductPage(this.title, this.amounte, this.price, this.imgUrl1,
      this.imgUrl2, this.imgUrl3, this.PostedOn);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return Material(
      elevation: 20,
      child: Card(
        margin: const EdgeInsets.all(5),
        color: productCardColor,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 10, 5, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisSize: MainAxisSize.min,
            children: [
              productInfo(
                  widget.title, widget.amounte, widget.price, widget.PostedOn),
              // const SizedBox(
              //   width: 8,
              // ),
              productImage(widget.imgUrl1),
              // productImage(widget.imgUrl2),
              // productImage(widget.imgUrl3)
            ],
          ),
        ),
      ),
    );
  }

  Widget productInfo(
      String title, String amount, double price, String PostedOn) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                style: productInfoStyle,
              ),
              const SizedBox(
                height: 35,
              ),
              Text(
                "  Amount: " + amount,
                style: productInfoStyle,
              ),
            ],
          ),
        ),
        SizedBox(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.3,
          ),
        ),
        Container(
          // margin: const EdgeInsets.only(left: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Price: " + price.toString() + " Birr",
                style: productInfoStyle,
              ),
              const SizedBox(
                height: 35,
              ),
              Text(
                "Posted: " + PostedOn,
                style: productInfoStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget productImage(String url) {
    return Positioned.fill(
        child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        url,
        width: 65,
        height: 65,
        fit: BoxFit.cover,
      ),
    ));
  }
}
