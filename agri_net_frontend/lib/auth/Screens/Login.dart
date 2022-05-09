import '../../libs.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Login Page"),
          centerTitle: true,
        ),
        body: Container(
          margin: const EdgeInsets.all(40),
          child: const Text('welcome'),
        ),
      ),
    );
  }
}
