import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:my_first_flutter_app/base/Media/media.dart';
import 'package:my_first_flutter_app/base/reusable/snippets/double_text.dart';
import 'package:my_first_flutter_app/base/reusable/snippets/greeting.dart';
import 'package:my_first_flutter_app/base/reusable/snippets/heading.dart';
import 'package:my_first_flutter_app/base/reusable/snippets/search_input.dart';
import 'package:my_first_flutter_app/base/reusable/snippets/sized_box.dart';
import 'package:my_first_flutter_app/base/reusable/widgets/hotel.dart';
import 'package:my_first_flutter_app/base/reusable/widgets/ticket.dart';
import 'package:my_first_flutter_app/json/all_hotels.dart';
import 'package:my_first_flutter_app/json/ticket_list.dart';
import 'package:my_first_flutter_app/styles/app_styles.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Greeting(text: 'Good Morning!'),
                MySizedBox(),
                Heading(
                  text: 'BOOK TICKETS',
                  color: AppStyles.whiteColor,
                )
              ],
            ),
            Container(
              height: 70,
              width: 70,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage(Media.logo))),
            ),
          ],
        ),
        const MySizedBox(),
        const SearchInput(),
        const MySizedBox(),
        DoubleText(
            bigText: 'Upcoming Flights',
            smallText: 'View all',
            func: () => Navigator.pushNamed(context, 'all_tickets')),
        const MySizedBox(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: ticketList
                  .map((singleTicket) => Ticket(ticket: singleTicket))
                  .toList()),
        ),
        const MySizedBox(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: hotelList.map((hotel) => Hotel(hotel: hotel)).toList(),
          ),
        )
      ],
    );
  }
}
