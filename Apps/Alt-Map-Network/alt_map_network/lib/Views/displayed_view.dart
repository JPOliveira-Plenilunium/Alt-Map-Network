import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'my_home_page.dart';

class DisplayedView extends StatefulWidget {
  const DisplayedView({Key? key}) : super(key: key);

  @override
  State<DisplayedView> createState() => _DisplayedViewState();
}

class _DisplayedViewState extends State<DisplayedView> {
  int _selectedIndex = 0;

  void _navigateNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //Add Tabs' Views Here
  final List<Widget> _views = [
    const MyHomePage(title: "Home"),
    const MyHomePage(title: "Map"),
    const MyHomePage(title: "Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _views[_selectedIndex],
      bottomNavigationBar: Container(
        color: const Color.fromRGBO(25, 25, 25, 1),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: GNav(
            backgroundColor: const Color.fromRGBO(25, 25, 25, 1),
            color: const Color.fromRGBO(238, 238, 238, 1),
            activeColor: const Color.fromRGBO(238, 238, 238, 1),
            tabBackgroundColor: Colors.grey.shade900,
            gap: 10,
            onTabChange: (index) {
              _navigateNavBar(index);
            },
            padding: const EdgeInsets.all(16),
            //Add Tabs Here
            tabs: const [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.map,
                text: "Map",
              ),
              GButton(
                icon: Icons.person,
                text: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
