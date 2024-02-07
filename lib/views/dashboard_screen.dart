import 'package:billing_app/res/components/MyBox.dart';
import 'package:billing_app/views/home_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  final PageController _pageController = PageController(initialPage: 0);

  DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  List<String> countries = [
    "Bills",
    "Disconnect",
    "Transfer",
    "Services",
    "Complain",
    "Update",
    "Connection",
    "Outage",
  ];

  int _selectedTab = 0;

  List _pages = [
    HomeScreen(),
    Center(
      child: Text("Usages"),
    ),
    Center(
      child: Text("History"),
    ),
    Center(
      child: Text("Support"),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Dashboard"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Usages"),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_3x3_outlined), label: "History"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail), label: "Support"),
        ],
      ),
    );
  }
}
