import 'package:carousel_slider/carousel_slider.dart';
import 'package:electronic/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

void main() => runApp(MaterialApp(home: Example()));

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

int _selectedIndex = 0;
List category = [
  'All',
  'PS5',
  'PS4',
  'Xbox One',
  'Xbox one x',
];

class _ExampleState extends State<Example> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  List<Widget> _widgetOptions = <Widget>[
    homepage(_selectedIndex),
    Text(
      'Store',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(51, 55, 66, 0.9),
        bottomNavigationBar: getFotter(),
        body: _widgetOptions.elementAt(_selectedIndex));
  }

  getFotter() {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(51, 55, 66, 0.9),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(.1),
          )
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 8,
            activeColor: Colors.black,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: Duration(milliseconds: 400),
            tabBackgroundColor: Color.fromARGB(228, 173, 182, 207),
            color: Colors.black,
            tabs: [
              GButton(
                icon: LineIcons.home,
                text: 'Home',
              ),
              GButton(
                icon: LineIcons.store,
                text: 'Likes',
              ),
              GButton(
                icon: LineIcons.user,
                text: 'store',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }

  selected(index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

