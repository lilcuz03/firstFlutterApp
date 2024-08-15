import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/base/reusable/snippets/regular_text.dart';
import 'package:my_first_flutter_app/base/reusable/snippets/sized_box.dart';
import 'package:my_first_flutter_app/styles/app_styles.dart';

class Hotel extends StatefulWidget {
  final Map<String, dynamic> hotel;
  const Hotel({super.key, required this.hotel});

  @override
  State<Hotel> createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.6,
      // height: size.height * 1,
      margin: const EdgeInsets.only(right: 20),
      decoration: const BoxDecoration(
          color: AppStyles.blueColor,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.hotel['image']),
                    fit: BoxFit.cover)),
          ),
          const MySizedBox(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RegularText(text: widget.hotel['name']),
              RegularText(text: widget.hotel['price']),
            ],
          ),
        ],
      ),
    );
  }
}
