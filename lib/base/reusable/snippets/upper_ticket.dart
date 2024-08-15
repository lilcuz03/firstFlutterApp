import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/base/icons/app_Icons.dart';
import 'package:my_first_flutter_app/base/reusable/snippets/sized_box.dart';
import 'package:my_first_flutter_app/base/reusable/snippets/ticket_text.dart';
import 'package:my_first_flutter_app/styles/app_styles.dart';

class UpperTicket extends StatefulWidget {
  final Map<String, dynamic> upperText;
  const UpperTicket({super.key, required this.upperText});

  @override
  State<UpperTicket> createState() => _UpperTicketState();
}

class _UpperTicketState extends State<UpperTicket> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 80,
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      width: size.width * 0.85,
      decoration: const BoxDecoration(
          color: AppStyles.upperTicketColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TicketText(text: widget.upperText['from']['code']),
              const MySizedBox(),
              TicketText(text: widget.upperText['from']['name']),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppIcons.planeFilled,
              const MySizedBox(),
              TicketText(text: widget.upperText['travel_time']),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TicketText(text: widget.upperText['to']['code']),
              const MySizedBox(),
              TicketText(text: widget.upperText['to']['name']),
            ],
          )
        ],
      ),
    );
  }
}
