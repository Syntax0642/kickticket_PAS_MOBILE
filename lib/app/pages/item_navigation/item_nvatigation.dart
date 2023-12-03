import 'package:flutter/material.dart';
import 'package:kickticket/app/pages/item_navigation/homepage/homepage_view.dart';
import 'package:kickticket/app/pages/item_navigation/profile/profile_view.dart';
import 'package:kickticket/app/pages/item_navigation/ticket_all/ticket_view.dart';

import 'favorite/favorite_view.dart';

/// Flutter code sample for [NavigationBar].


class Bottom_Nav extends StatefulWidget {
  const Bottom_Nav({super.key});

  @override
  State<Bottom_Nav> createState() => _Bottom_Nav();
}

class _Bottom_Nav extends State<Bottom_Nav> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        backgroundColor: Colors.white,
        height: 100,
        indicatorColor: Color(0xff9d76c1),
        indicatorShape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        elevation: 0,


        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.notifications_sharp)),
            label: 'Favorite',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.messenger),
            icon: Icon(Icons.messenger_sharp),
            label: 'Ticket',
          ),

          NavigationDestination(

            selectedIcon: Icon(Icons.messenger),
            icon: Icon(Icons.messenger_sharp),
            label: 'Profile',
          ),
        ],
      ),
      body: <Widget>[
        homePageView(),
        FavDesign(),
        TicketDesign(),
        ProfileScreen()
      ][currentPageIndex],
    );
  }
}