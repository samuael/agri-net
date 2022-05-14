import '../../libs.dart';

class AgriNetLogo extends StatelessWidget {
  const AgriNetLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: ClipOval(
        child: Image.asset(
          'assets/image_assets/agri_net_final_temporary_logo.png',
          width: 70,
          height: 70,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
