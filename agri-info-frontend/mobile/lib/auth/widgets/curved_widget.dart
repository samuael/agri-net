import 'package:mobile/libs.dart';

class Curved_Widget extends StatelessWidget {
  const Curved_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      color: Colors.white,
      child: Expanded(
        child: Column(
          children: [
            // Image.asset(
            //   "../../../images/logo/agri.jpg",
            //   width: 30,
            //   height: 30,
            // ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: Colors.green,
              child: Center(
                child: const Text(
                  "Agri-Net",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(80),
                  ),
                  color: Colors.green),
              // child: const Text("data"),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: Colors.green,
              child: Row(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                      ),
                      color: Colors.white),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
