import 'package:mobile/messages/screens/Login_Page.dart';

import "libs.dart";

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AuthScreen.RouteName,
      routes: {
        AuthScreen.RouteName: (context) {
          return AuthScreen();
        }
      },
    );
  }
}
