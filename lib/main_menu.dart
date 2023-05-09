import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'Favorit.dart';
import 'aplikasi_stopwatch.dart';
import 'daftar_anggota.dart';
import 'login_page.dart';
import 'halaman_utama.dart';
import 'help_page.dart';
import 'list_website.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {

  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HalamanUtama(),
    HelpPage(),

  ];

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    void _onLogoutPressed() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Help',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
            backgroundColor: Colors.green,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          if (index == 2) {
            _onLogoutPressed();
          } else {
            _onItemTapped(index);
          }
        },
      ),
    );
  }
}