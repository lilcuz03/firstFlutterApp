import 'package:flutter/material.dart';

class AppStyles {
  //colors
  static const Color appBackgroundColor = Color.fromARGB(255, 184, 107, 107);
  static const Color bottomNavBackgroundColor = Colors.black;
  static const Color activeIconColor = Color.fromARGB(255, 68, 250, 253);
  static const Color iconColor = Colors.white;
  static const Color whiteColor = Colors.white;
  static const Color blueColor = Color.fromARGB(255, 13, 119, 114);
  static const Color upperTicketColor = Color.fromARGB(255, 138, 63, 2);

  // Text Styles

  static const TextStyle bigBoldHeading = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle bigHeading = TextStyle(fontSize: 26);
  static const TextStyle mediumBoldHeading =
      TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
  static const TextStyle mediumHeading = TextStyle(fontSize: 22);
  static const TextStyle smallBoldHeading =
      TextStyle(fontSize: 17, fontWeight: FontWeight.bold);
  static const TextStyle smallHeading = TextStyle(fontSize: 17);
  static const TextStyle ticketText =
      TextStyle(fontSize: 16, color: Color.fromARGB(255, 138, 227, 228));
  static const TextStyle regularText = TextStyle(fontSize: 15);
  static const TextStyle whiteText = TextStyle(color: whiteColor);
  static const TextStyle blueText = TextStyle(color: blueColor);
  static const TextStyle ticketTextStyle =
      TextStyle(color: whiteColor, fontSize: 16);
}
