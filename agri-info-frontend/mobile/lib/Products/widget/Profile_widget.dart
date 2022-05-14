import '../../libs.dart';

class ProductAccountPage extends StatefulWidget {
  const ProductAccountPage({Key? key}) : super(key: key);

  @override
  State<ProductAccountPage> createState() => _ProductAccountPageState();
}

class _ProductAccountPageState extends State<ProductAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/image_assets/pp.jpg',
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "User Name",
              style: UserNameFontStyle,
            )
          ],
        ),
      ),
    );
    // return Drawer(
    //   child: ListView(
    //     children: [
    //       UserAccountsDrawerHeader(
    //           accountName: Text(
    //             "User Name",
    //           ),
    //           accountEmail: Text("user@gmail.com"),
    //           currentAccountPicture: CircleAvatar(
    //             child: ClipOval(
    //               child: Image.asset(
    //                 'images/pp.jpg',
    //                 width: 50,
    //                 height: 50,
    //                 fit: BoxFit.cover,
    //               ),
    //             ),
    //           )),
    //     ],
    //   ),
    // );
  }
}
