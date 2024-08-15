import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/base/reusable/snippets/heading.dart';
import 'package:my_first_flutter_app/base/reusable/widgets/ticket.dart';
import 'package:my_first_flutter_app/json/ticket_list.dart';
import 'package:my_first_flutter_app/styles/app_styles.dart';

class AllTickets extends StatefulWidget {
  const AllTickets({super.key});

  @override
  State<AllTickets> createState() => _AllTicketsState();
}

class _AllTicketsState extends State<AllTickets> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Heading(
          text: 'ALL TICKETS',
          color: AppStyles.whiteColor,
        ),
        centerTitle: true,
        backgroundColor: AppStyles.activeIconColor,
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
              width: size.width * 1,
              color: AppStyles.appBackgroundColor,
              child: Column(
                children: ticketList
                    .map((singleTicket) => Ticket(ticket: singleTicket))
                    .toList(),
              ))),
    );
  }
}
