import 'package:flutter/material.dart';
import 'package:futapp/pages/league_page.dart';
import 'package:futapp/pages/player_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    PlayerPage(),
    LeaguePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 4, 4, 4),
        unselectedItemColor: const Color.fromARGB(255, 145, 145, 145),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'PLAYERS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shield),
            label: 'LEAGUES',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        selectedFontSize: 15,
        selectedIconTheme: const IconThemeData(size: 35),
        onTap: _onItemTapped,
      ),
    );
  }
}
