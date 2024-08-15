import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/base/reusable/widgets/all_tickets.dart';
import 'package:my_first_flutter_app/index.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const Index(),
      'all_tickets':(context)=> const AllTickets(),
    },
  ));
}
