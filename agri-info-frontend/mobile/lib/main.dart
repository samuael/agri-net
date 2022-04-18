// import 'auth/screens/product1.dart';
import 'auth/screens/subScreen.dart';
import 'auth/widgets/subscription.dart';
import "libs.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const int swatch = 0xFF21ABA5;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agri-Net',
      theme: ThemeData(
        primarySwatch: MaterialColor(swatch, {
          50: Color(swatch),
          100: Color(swatch),
          200: Color(swatch),
          300: Color(swatch),
          400: Color(swatch),
          500: Color(swatch),
          600: Color(swatch),
          700: Color(swatch),
          800: Color(swatch),
          900: Color(swatch),
        }),
      ),
      initialRoute: AuthScreen.RouteName,
      onGenerateRoute: (setting) {
        switch (setting.name) {
          case RegistrationScreen.RouteName:
            {
              return MaterialPageRoute(builder: (context) {
                return SubScreen1();
              });
            }
          case AuthScreen.RouteName:
            {
              return MaterialPageRoute(builder: (context) {
                return AuthScreen();
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
