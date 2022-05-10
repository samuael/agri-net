// import 'auth/screens/product1.dart';
import 'auth/screens/product1.dart';
import 'auth/screens/subScreen.dart';
import 'auth/screens/message_screen.dart';
import 'auth/widgets/subscription.dart';
import "libs.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const int swatch = 0xFF21ABA5;
  @override
  Widget build(BuildContext context) {
    // Navigator.of(context).pushNamed(ProductItem.RouteName);
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
      initialRoute: Message_Screen.RouteName,
      onGenerateRoute: (setting) {
        switch (setting.name) {
          // case RegistrationScreen.RouteName:
          //   {
          //     return MaterialPageRoute(builder: (context) {
          //       return RegistrationScreen();
          //     });
          //   }
          // case AuthScreen.RouteName:
          //   {
          //     return MaterialPageRoute(builder: (context) {
          //       return AuthScreen();
          //     });
          //   }
          case Message_Screen.RouteName:
            {
              return MaterialPageRoute(builder: (context) {
                return Message_Screen();
              });
            }
          case AuthScreen1.RouteName:
            {
              return MaterialPageRoute(builder: (context) {
                return AuthScreen1();
              });
            }
          // case ConfirmationScreen.RouteName:
          //   {
          //     return MaterialPageRoute(builder: (context) {
          //       final String phone =
          //           (setting.arguments as Map<String, dynamic>)["phone"];
          //       return ConfirmationScreen(phone);
          //     });
          //   }
          // case SubScreen1.RouteName:
          //   {
          //     return MaterialPageRoute(builder: (context) {
          //       return SubScreen1();
          //     });
          //   }

          // case ProductItem.RouteName:
          //   {
          //     return MaterialPageRoute(builder: (context) {
          //       return ProductItem();
          //     });
          // }
        }
      },
    );
  }
}
