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
      title: 'Agri-Net',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      initialRoute: AuthScreen.RouteName,
<<<<<<< HEAD
      onGenerateRoute: (setting){
        switch(setting.name){
          case RegistrationScreen.RouteName:{
            return MaterialPageRoute(builder: (context){
              return RegistrationScreen();
            });
          }
          case AuthScreen.RouteName : {
            return MaterialPageRoute(builder: (context){
              return AuthScreen();
            });
          }
          case ConfirmationScreen.RouteName : {
            return MaterialPageRoute( builder : (context){
              final String phone = (setting.arguments as Map<String,dynamic>)["phone"];
              return ConfirmationScreen(phone);
            });
          }
=======
      routes: {
        AuthScreen.RouteName: (context) {
          return AuthScreen();
>>>>>>> 38a3a305bb50c6d60d7df7867d273b966a8e5a16
        }
      },
    );
  }
}
