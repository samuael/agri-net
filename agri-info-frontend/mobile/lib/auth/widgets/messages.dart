import '../../libs.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Card(
        elevation: 2,
        child: Container(
          // height: 100,
          color: Theme.of(context).canvasColor,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      "Abebe Kebede",
                      style: TextStyle(
                          fontFamily: "Roboto", fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "bla bala blalalalla ladkdjfladl a kakffiw asldjakk ajkdjfiw dkf iai isikf oskjf dkfj",
                    style: TextStyle(fontFamily: "ROboto"),
                  ),
                ],
              ),
              Row(children: [
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    child: Container(height: 30),
                  ),
                ),
                // Expanded(
                //   flex: 1,
                //   child: ClipRRect(
                //     child: Container(),
                //   ),
                // ),
                Expanded(
                  flex: 8,
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(30)),
                    child: Opacity(
                      opacity: 0.0,
                      child: Container(
                        height: 30,
                      ),
                    ),
                  ),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
