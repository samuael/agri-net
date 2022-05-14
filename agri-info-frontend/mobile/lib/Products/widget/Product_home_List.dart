import '../../libs.dart';

class ProductScreenBody extends StatefulWidget {
  const ProductScreenBody({Key? key}) : super(key: key);

  @override
  State<ProductScreenBody> createState() => _ProductScreenBodyState();
}

class _ProductScreenBodyState extends State<ProductScreenBody> {
  Product dropdownvalue = products[0];

  @override
  Widget build(BuildContext context) {
    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.width;

    return Flexible(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(width: we / 3, child: ProductItemDropDown()),
                SizedBox(
                  width: 6,
                ),
                Container(width: we / 5, child: AllProductDropDown())
              ]),
            ),
            AllProducts()
          ],
        ),
      ),
    );
  }

  Widget AllProducts() {
    return Flexible(
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: ((context, index) => ProductPage(
            products[index].title,
            products[index].amount,
            products[index].price,
            products[index].imgUrl1,
            products[index].imgUrl2,
            products[index].imgUrl3,
            products[index].PostedOn)),
        scrollDirection: Axis.vertical,
        controller: ScrollController(initialScrollOffset: 0.0),
      ),
    );
  }

  Widget ProductItemDropDown() {
    return SizedBox(
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Colors.white, //background color of dropdown button
            // border: Border.all(
            //     color: Colors.black38, width: 1), //border of dropdown button
            borderRadius:
                BorderRadius.circular(10), //border raiuds of dropdown button
            boxShadow: <BoxShadow>[
              //apply shadow on Dropdown button
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                  blurRadius: 5) //blur radius of shadow
            ]),
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: DropdownButton<Product>(
            value: dropdownvalue,

            items: products.map<DropdownMenuItem<Product>>((Product product) {
              return DropdownMenuItem(
                value: product,
                child: Text(
                  product.toString(),
                  style: dropDownListItemText,
                ),
              );
            }).toList(),
            onChanged: (Product? newvalue) {
              //get value when changed
              setState(() {
                dropdownvalue == newvalue;
              });
            },
            icon: Padding(
                //Icon at tail, arrow bottom is default icon
                padding: EdgeInsets.only(left: 10),
                child: Icon(Icons.arrow_circle_down_sharp)),
            iconEnabledColor: Colors.black, //Icon color
            style: dropDownListItemText,

            dropdownColor: Colors.white, //dropdown background color
            underline: Container(), //remove underline
            isExpanded: true, //make true to make width 100%
          ),
        ),
      ),
    );
  }

  Widget AllProductDropDown() {
    return SizedBox(
      child: DecoratedBox(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                    blurRadius: 5) //blur radius of shadow
              ]),
          child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: DropdownButton(
                value: "All",
                items: [
                  DropdownMenuItem(
                    child: Text(
                      "All",
                      style: dropDownListItemText,
                    ),
                    value: "All",
                  )
                ],
                onChanged: (value) {},
                // isExpanded: true, //make true to take width of parent widget
                underline: Container(), //empty line
                style: TextStyle(fontSize: 18, color: Colors.white),
                dropdownColor: Colors.white,
                iconEnabledColor: Colors.black, //Icon color
              ))),
    );
  }
}

class Product {
  String title;
  String amount;
  double price;
  String imgUrl1;
  String imgUrl2;
  String imgUrl3;
  String PostedOn;

  Product(this.title, this.price, this.amount, this.imgUrl1, this.imgUrl2,
      this.imgUrl3, this.PostedOn) {}
}

final List<Product> products = [
  Product(
      "Bekollo",
      1000.0,
      "100K",
      "assets/image_assets/bekolo1.jpg",
      "assets/image_assets/bekolo2.jpg",
      "assets/image_assets/pp.jpg",
      "2 days a go"),
  Product(
      "Teff",
      1000.0,
      "100K",
      "assets/image_assets/bekolo2.jpg",
      "assets/image_assets/bekolo1.jpg",
      "assets/image_assets/pp.jpg",
      "2 days a go"),
  Product(
      "Bakela",
      1000.0,
      "100K",
      "assets/image_assets/bekolo1.jpg",
      "assets/image_assets/bekolo2.jpg",
      "assets/image_assets/pp.jpg",
      "2 days a go"),
  Product(
      "Mahsila",
      1000.0,
      "100K",
      "assets/image_assets/bekolo2.jpg",
      "assets/image_assets/bekolo1.jpg",
      "assets/image_assets/pp.jpg",
      "2 days a go"),
  Product(
      "Bekollo",
      1000.0,
      "100K",
      "assets/image_assets/bekolo1.jpg",
      "assets/image_assets/bekolo2.jpg",
      "assets/image_assets/pp.jpg",
      "2 days a go"),
  Product(
      "Teff",
      1000.0,
      "100K",
      "assets/image_assets/bekolo2.jpg",
      "assets/image_assets/bekolo1.jpg",
      "assets/image_assets/pp.jpg",
      "2 days a go"),
  Product(
      "Bakela",
      1000.0,
      "100K",
      "assets/image_assets/bekolo1.jpg",
      "assets/image_assets/bekolo2.jpg",
      "assets/image_assets/pp.jpg",
      "2 days a go"),
  Product(
      "Mahsila",
      1000.0,
      "100K",
      "assets/image_assets/bekolo2.jpg",
      "assets/image_assets/bekolo1.jpg",
      "assets/image_assets/pp.jpg",
      "2 days a go"),
];
