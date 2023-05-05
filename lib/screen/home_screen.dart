import 'package:flutter/material.dart';
import 'package:learning_management_system/pages/courses.dart';
import 'package:learning_management_system/pages/home_page.dart';
import 'package:learning_management_system/pages/login_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Courses(),
    ListView(
      children: [
        SizedBox(height: 20),
        Center(
          child: Text(
            'List of my courses',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 20),
        ListTile(
          title: Text('Filipino', style: TextStyle(fontSize: 20)),
          subtitle: Text(
            'Description of Filipino course',
            style: TextStyle(fontSize: 15),
          ),
          onTap: () {
            // Add your code here for when the user clicks on the item
          },
        ),
        ListTile(
          title: Text('English', style: TextStyle(fontSize: 20)),
          subtitle: Text(
            'Description of English course',
            style: TextStyle(fontSize: 15),
          ),
          onTap: () {
            // Add your code here for when the user clicks on the item
          },
        ),
        ListTile(
          title: Text('Math', style: TextStyle(fontSize: 20)),
          subtitle: Text(
            'Description of Math course',
            style: TextStyle(fontSize: 15),
          ),
          onTap: () {
            // Add your code here for when the user clicks on the item
          },
        ),
        ListTile(
          title: Text('Chemistry', style: TextStyle(fontSize: 20)),
          subtitle: Text(
            'Description of Chemistry course',
            style: TextStyle(fontSize: 15),
          ),
          onTap: () {
            // Add your code here for when the user clicks on the item
          },
        ),
      ],
    ),
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
        selectedItemColor: Colors.black,
        selectedFontSize: 15,
        unselectedItemColor: Colors.black,
        items: [
        BottomNavigationBarItem(
        icon: Icon(Icons.home, color: Colors.black),
    label: 'Home',
    backgroundColor: Colors.white),
    BottomNavigationBarItem(
    icon: Icon(Icons.assignment, color: Colors.black),
    label: 'Courses',
    backgroundColor: Colors.white),
    BottomNavigationBarItem(
    icon: Icon(Icons.book, color: Colors.black),
    label: 'Course list',
    backgroundColor: Colors.white),
    BottomNavigationBarItem(
    icon: Icon(Icons.person, color: Colors.black),
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
    "assets/images/background.png",fit: BoxFit.cover,
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