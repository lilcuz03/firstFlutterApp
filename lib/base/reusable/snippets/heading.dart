import 'package:flutter/widgets.dart';
import 'package:my_first_flutter_app/styles/app_styles.dart';

class Heading extends StatelessWidget {
  final String text;
  final Color color;
  const Heading({super.key , required this.text , required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(text , style: AppStyles.bigBoldHeading);
  }
}