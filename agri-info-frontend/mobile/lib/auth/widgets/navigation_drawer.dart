import "../../libs.dart";

class HomeNavigationDrawer extends StatelessWidget {
  HomeNavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.green,
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100),
                      ),
                      child: Container(
                        color: Colors.green,
                        height: 100,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                    ),
                    child: Container(
                      height: 100,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text(
                "Naty",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title:
                  Text("subscription", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.list, color: Colors.white),
              title: Text("Naty", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                "Naty",
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text(
                "Naty",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
