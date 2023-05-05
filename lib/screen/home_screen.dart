import 'package:flutter/material.dart';
import 'package:learning_management_system/pages/courses.dart';
import 'package:learning_management_system/pages/home_page.dart';
import 'package:learning_management_system/pages/login_page.dart';
import 'package:learning_management_system/pages/courselist_page.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Courses(),
    CourseListPage(),
    LoginPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        iconSize: 25,
        selectedItemColor: Colors.blue,
        selectedFontSize: 15,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black26),
              label: 'Home',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment, color: Colors.black26),
              label: 'Courses',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.book, color: Colors.black26),
              label: 'Course list',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black26),
              label: 'Account',
              backgroundColor: Colors.white),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
      ),
      appBar: _selectedIndex == 2
          ? AppBar(
        title: Center(child: Text('My Courses')),
        backgroundColor: Colors.black,
      )
          : null,
      body: Stack(
        children: [
          Image.asset(
            "assets/bg.jpg",fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ],
      ),
    );
  }
}