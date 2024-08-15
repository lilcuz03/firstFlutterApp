import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/base/reusable/snippets/lower_ticket.dart';
import 'package:my_first_flutter_app/base/reusable/snippets/sized_box.dart';
import 'package:my_first_flutter_app/base/reusable/snippets/upper_ticket.dart';
import 'package:my_first_flutter_app/styles/app_styles.dart';
// import 'package:my_first_flutter_app/styles/app_styles.dart';

class Ticket extends StatefulWidget {
  final Map<String, dynamic> ticket;
  const Ticket({super.key, required this.ticket});

  @override
  State<Ticket> createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: const EdgeInsets.only(right: 30),
      child: Column(
        children: [
          UpperTicket(upperText: widget.ticket),
          Container(
            width: size.width * 0.85,
            height: 20,
            color: AppStyles.bottomNavBackgroundColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: const BoxDecoration(
                      color: AppStyles.appBackgroundColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: const BoxDecoration(
                      color: AppStyles.appBackgroundColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                ),
              ],
            ),
          ),
          LowerTicket(lowerTicket: widget.ticket),
        ],
      ),
    );
  }
}
