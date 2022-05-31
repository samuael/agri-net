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
      onGenerateRoute: (RouteSettings setting) {
        switch (setting.name) {
          case AuthScreen.RouteName:
            return MaterialPageRoute(builder: (context) => const AuthScreen());

          case RegistrationScreen.RouteName:
            return MaterialPageRoute(
                builder: (context) => const RegistrationScreen());

          case ProductHomeScreen.RouteName:
            return MaterialPageRoute(
                builder: ((context) => const ProductHomeScreen()));

          case ChatHomePage.RouteName:
            return MaterialPageRoute(
                builder: ((context) => const ChatHomePage()));
          case ChatDetailPage.RouteName:
            final args = setting.arguments as ScreenArguments;
            return MaterialPageRoute(
                builder: (context) => ChatDetailPage(
                      userName: args.UserName,
                      isActive: true,
                    ));
          default:
            {
              return MaterialPageRoute(
                  builder: (context) => const AuthScreen());
            }
        }
      },
    );
  }
}
