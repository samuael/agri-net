import '../../libs.dart';

class ProductScreenAppBarDrawer extends StatefulWidget
    implements PreferredSizeWidget {
  const ProductScreenAppBarDrawer({Key? key}) : super(key: key);

  @override
  State<ProductScreenAppBarDrawer> createState() =>
      _ProductScreenAppBarDrawerState();

  @override
  Size get preferredSize => Size.fromHeight(60);
}

class _ProductScreenAppBarDrawerState extends State<ProductScreenAppBarDrawer> {
  @override
  Widget build(BuildContext context) {
    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    Widget divider;
    return Material(
      elevation: 5,
      child: Container(
        // color: appBarTheme,

        width: we,
        height: he / 11.5,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 30, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const AgriNetLogo(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Container(child: LanguageDropDown()),
                      const SizedBox(
                        width: 30,
                      ),
                      ProductAccountPage(),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget LanguageDropDown() {
    List lang = ["Amh", "Eng"];
    return DropdownButton(
        hint: const Text("lang"),
        items: lang
            .map((item) => DropdownMenuItem(value: item, child: new Text(item)))
            .toList(),
        onChanged: (value) {
          setState(() {
            value = value;
          });
        });
  }
}
