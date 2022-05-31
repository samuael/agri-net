import '../../libs.dart';

class ChatHomePage extends StatefulWidget {
  static const String RouteName = "ChatHomeRoom";
  const ChatHomePage({Key? key}) : super(key: key);

  @override
  State<ChatHomePage> createState() => _ChatHomePageState();
}

class _ChatHomePageState extends State<ChatHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatPage(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: ("Chats"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work,),
            label: ("Products"),
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: ("Profile"),
          ),
        ],
      ),
    );
  }
}
