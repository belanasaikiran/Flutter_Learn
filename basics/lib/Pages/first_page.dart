// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:basics/Pages/home_page.dart';
import 'package:basics/Pages/profile_page.dart';
import 'package:basics/Pages/settings_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    //homepage,
    HomePage(),

    //profile page
    ProfilePage(),

    //settings page
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),

          //profile
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),

          //settings
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
        ],
      ),
      drawer: Drawer(
          backgroundColor: Colors.deepPurple[100],
          child: Column(
            children: [
              DrawerHeader(
                child: Icon(Icons.favorite, size: 48),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('H O M E'),
                onTap: () => {
                  Navigator.pop(context),
                  Navigator.pushNamed(context, "/homepage")
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('S E T T I N G S'),
                onTap: () => {
                  Navigator.pop(context),
                  Navigator.pushNamed(context, "/settingspage")
                },
              ),
            ],
          )),
    );
  }
}
