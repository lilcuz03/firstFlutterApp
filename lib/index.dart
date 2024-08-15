import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/base/icons/app_Icons.dart';
import 'package:my_first_flutter_app/base/views/home_view.dart';
import 'package:my_first_flutter_app/styles/app_styles.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int currentWidget = 0;
  final allWidgets = [
    const HomeView(),
    const Text('Profile Page Here'),
    const Text('Tickets Page Here'),
    const Text('Search Page Here')
  ];

  void changeWidget(int index) {
    setState(() {
      currentWidget = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        color: AppStyles.appBackgroundColor,
        child: ListView(
          children: [allWidgets[currentWidget]],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          onTap: changeWidget,
          currentIndex: currentWidget,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: AppStyles.bottomNavBackgroundColor,
                icon: AppIcons.home,
                activeIcon: AppIcons.homeFilled,
                label: 'Home'),
            BottomNavigationBarItem(
                icon: AppIcons.profile,
                activeIcon: AppIcons.profileFilled,
                label: 'profile'),
            BottomNavigationBarItem(
                icon: AppIcons.ticket,
                activeIcon: AppIcons.ticketFilled,
                label: 'ticket'),
            BottomNavigationBarItem(
                icon: AppIcons.search,
                activeIcon: AppIcons.searchFilled,
                label: 'search'),
          ]),
    );
  }
}
