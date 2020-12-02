import 'package:flutter/material.dart';
import 'package:travel_plan/core/config/base_config.dart';
import 'package:travel_plan/ui/pages/home_page.dart';
import 'package:travel_plan/ui/pages/place_page.dart';
import 'package:travel_plan/ui/pages/profile_page.dart';
import 'package:travel_plan/ui/pages/transaction_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentPage = 0;
  var _pages = [
    HomePage(),
    PlacePage(),
    TransactionPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        currentIndex: _currentPage,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: BaseConfig.primaryColor,
        unselectedItemColor: Colors.grey[300],
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('Place'),
            icon: Icon(Icons.place),
          ),
          BottomNavigationBarItem(
            title: Text('Transaction'),
            icon: Icon(Icons.calendar_today),
          ),
          BottomNavigationBarItem(
            title: Text('Profile'),
            icon: Icon(Icons.person_outline),
          ),
        ],
      ),
    );
  }
}
