import '../../libs.dart';

class ChatDetailPage extends StatefulWidget {
  static const String RouteName = "ChatDetailPage";
  const ChatDetailPage({Key? key}) : super(key: key);

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat Detail Page"),
      ),
    );
  }
}
