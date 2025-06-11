import 'package:flutter/material.dart';
import '../widgets/custom_bottom_nav.dart';
import 'portfolio_screen.dart';
import 'empty_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 1; // Start with Portfolio tab

  final List<Widget> _screens = [
    EmptyScreen(title: 'Home'),
    PortfolioScreen(),
    EmptyScreen(title: 'Input'),
    EmptyScreen(title: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CustomBottomNav(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}