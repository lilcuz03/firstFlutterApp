import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/styles/app_styles.dart';

class TicketText extends StatelessWidget {
  final String text;
  const TicketText({super.key , required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: AppStyles.ticketTextStyle,);
  }
}