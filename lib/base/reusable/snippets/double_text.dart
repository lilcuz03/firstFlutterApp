import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/base/reusable/snippets/regular_text.dart';
import 'package:my_first_flutter_app/styles/app_styles.dart';

class DoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;
  final VoidCallback func;
  const DoubleText(
      {super.key,
      required this.bigText,
      required this.smallText,
      required this.func});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: AppStyles.mediumBoldHeading,
        ),
        InkWell(
          onTap: func,
          child:  RegularText(text: smallText),
        )
      ],
    );
  }
}
