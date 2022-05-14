import "libs.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agri-Net',
      theme: ThemeData(
          // primarySwatch: Colors.black45, //  MaterialColor(primary, swatch),
          ),
      initialRoute: AuthScreen.RouteName,
      onGenerateRoute: (setting) {
        switch (setting.name) {
          case RegistrationScreen.RouteName:
            {
              return MaterialPageRoute(builder: (context) {
                return const RegistrationScreen();
              });
            }
          case AuthScreen.RouteName:
            {
              return MaterialPageRoute(builder: (context) {
                return const AuthScreen();
              });
            }
          case ProductHomeScreen.RouteName:
            {
              return MaterialPageRoute(builder: (context) {
                return const ProductHomeScreen();
              });
            }
          case ConfirmationScreen.RouteName:
            {
              return MaterialPageRoute(builder: (context) {
                final String phone =
                    (setting.arguments as Map<String, dynamic>)["phone"];
                return ConfirmationScreen(phone);
              });
            }
        }
      },
    );
  }
}
