import 'package:flutter/cupertino.dart';
import 'package:my_pdp/widgets/pdp_info_card_wg.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(13),
      child: PDPInfoCard(),
    );
  }
}
