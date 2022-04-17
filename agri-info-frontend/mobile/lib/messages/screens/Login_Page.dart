import 'package:mobile/libs.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Login Page"),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
            children: [
              Curved_Widget(),
              Container(
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  border: Border.all(
                    color: Colors.black,
                    width: 0.5,
                  ),
                ),

                margin: const EdgeInsets.all(30),
                // color: Colors.grey[400],
                // width: 300,
                // height: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          label: Text("User name"),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          label: Text("Password"),
                        ),
                        obscureText: true,
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      TextButton(
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(color: Colors.blue),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        minWidth: 250,
                        height: 50,
                        color: Theme.of(context).primaryColor,
                        onPressed: () {},
                        child: Text("Login"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
