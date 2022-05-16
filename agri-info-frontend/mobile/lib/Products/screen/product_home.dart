import '../../libs.dart';

class ProductHomeScreen extends StatefulWidget {
  static const String RouteName = "/homescreen";
  const ProductHomeScreen({Key? key}) : super(key: key);

  @override
  State<ProductHomeScreen> createState() => _ProductHomeScreenState();
}

class _ProductHomeScreenState extends State<ProductHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agri-Net Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Product Page"),
          actions: const <Widget>[ProductScreenAppBarDrawer()],
        ),
        body: Center(
          child: Container(
            // height: double.infinity,
            child: Row(
              children: const [
                CollapsingSideBarDrawer(),
                // HomePage()
                ProductScreenBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
