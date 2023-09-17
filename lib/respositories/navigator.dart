import 'package:flutter/material.dart';
import 'package:homekitchen_customer_mobile/respositories/setting_page.dart';

class FooterBar extends StatefulWidget {
  const FooterBar({super.key});

  @override
  State<FooterBar> createState() =>
      _FooterBarState();
}

class _FooterBarState extends State<FooterBar> {
  int _selectedIndex = 3;
  static const TextStyle optionStyle =
          TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Notification',
      style: optionStyle,
    ),
    Text(
      'user',
      style: optionStyle,
    ),
    SettingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Mom kitchen', style: TextStyle(fontSize: 40))),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.lightBlueAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Noti',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'person',
            backgroundColor: Colors.tealAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
            backgroundColor: Colors.lightBlueAccent,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
