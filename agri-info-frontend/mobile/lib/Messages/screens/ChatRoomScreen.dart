import '../../libs.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Chala Debela",
        messageText: "Bekkolo 50 kuntal alegn tfelgaleh",
        imageURL: "images/userImage1.jpeg",
        time: "Now"),
    ChatUsers(
        name: "Bekele Chanie",
        messageText: "20 kuntal teff tfelgalh",
        imageURL: "images/userImage2.jpeg",
        time: "Yesterday"),
    ChatUsers(
        name: "Jorge Henry",
        messageText: "Hey where are you?",
        imageURL: "images/userImage3.jpeg",
        time: "31 Mar"),
    ChatUsers(
        name: "Philip Fox",
        messageText: "Busy! Call me in 20 mins",
        imageURL: "images/userImage4.jpeg",
        time: "28 Mar"),
    ChatUsers(
        name: "Debra Hawkins",
        messageText: "Thankyou, It's awesome",
        imageURL: "images/userImage5.jpeg",
        time: "23 Mar"),
    ChatUsers(
        name: "Jacob Pena",
        messageText: "will update you in evening",
        imageURL: "images/userImage6.jpeg",
        time: "17 Mar"),
    ChatUsers(
        name: "Andrey Jones",
        messageText: "Can you please share the file?",
        imageURL: "images/userImage7.jpeg",
        time: "24 Feb"),
    ChatUsers(
        name: "John Wick",
        messageText: "How are you?",
        imageURL: "images/userImage8.jpeg",
        time: "18 Feb"),
  ];
  @override
  Widget build(BuildContext context) {
    //const double d = MediaQuery.of(context).size.width * 0.08.toDouble();
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Row(
                    children: <Widget>[
                      // Container(
                      //   width: MediaQuery.of(context).size.width * 0.1,
                      // ),
                      const Text(
                        "Conversations",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            left: 20, right: 8, top: 2, bottom: 2),
                        height: 20,
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(30),
                        //   color: Colors.pink[50],
                        // ),
                        child: Row(
                          children: const <Widget>[
                            Icon(
                              Icons.person,
                              color: Colors.pink,
                              size: 30,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "User Name",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10),
              //width: MediaQuery.of(context).size.width * 0.12,
              // height: MediaQuery.of(context).size.height * 0.05,
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  //Colors.grey.shade100,
                  hintText: "Search...",

                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: const EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.grey.shade100)),
                ),
              ),
            ),
            ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                color: Colors.black54,
              ),
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 10),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageUrl: chatUsers[index].imageURL,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3) ? true : false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
