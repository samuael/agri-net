import '../../libs.dart';

class ChatDetailPage extends StatefulWidget {
  static const String RouteName = "ChatDetailPage";

  String userName;
  bool isActive;
  ChatDetailPage({required this.userName, required this.isActive});

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
 // ScreenArguments screenArguments;
  @override
  Widget build(BuildContext context) {
   // final args = ModalRoute.of(context)!.settings.arguments;
    print(ModalRoute.of(context)!.settings.name.toString() + "the result");
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Text("message body"),
    );
  }
}

class ScreenArguments {
  final String UserName;
  final bool isActive;

  ScreenArguments(this.UserName, this.isActive);
}
