import 'package:flutter/widgets.dart';
import 'package:my_first_flutter_app/styles/app_styles.dart';

class RegularText extends StatelessWidget {
  final String text;
  const RegularText({super.key , required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text , style: AppStyles.whiteText,);
  }
}