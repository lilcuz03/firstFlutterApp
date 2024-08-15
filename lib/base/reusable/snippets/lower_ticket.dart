import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/base/reusable/snippets/sized_box.dart';
import 'package:my_first_flutter_app/base/reusable/snippets/ticket_text.dart';
import 'package:my_first_flutter_app/styles/app_styles.dart';

class LowerTicket extends StatefulWidget {
  final Map<String, dynamic> lowerTicket;
  const LowerTicket({super.key, required this.lowerTicket});

  @override
  State<LowerTicket> createState() => _LowerTicketState();
}

class _LowerTicketState extends State<LowerTicket> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 80,
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      width: size.width * 0.85,
      decoration: const BoxDecoration(
          color: AppStyles.bottomNavBackgroundColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TicketText(text: widget.lowerTicket['date']),
              const MySizedBox(),
              const TicketText(text: 'DATE'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TicketText(text: widget.lowerTicket['departure_time']),
              const MySizedBox(),
              const TicketText(text: 'Departure Time'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TicketText(text: widget.lowerTicket['number'].toString()),
              const MySizedBox(),
              const TicketText(text: 'NUMBER')
            ],
          )
        ],
      ),
    );
  }
}
