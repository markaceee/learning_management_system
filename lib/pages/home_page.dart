import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:learning_management_system/pages/course_page.dart';
import 'package:learning_management_system/pages/login_page.dart';
import 'package:learning_management_system/screen/welcome_screen.dart';

class HomePage extends StatelessWidget {

  List<Color> categoryColors = [
    Color(0xFF245AB2),
    Color(0xFFC86632),
    Color(0xFF3FA538),
    Color(0xFFB33C43),
  ];

  List categoryNames = [
    "English",
    "Math",
    "Science",
    "Filipino"
  ];

  List<Icon> categoryIcons = [
    Icon(Icons.menu_book, color: Color(0xFF245AB2), size: 30),
    Icon(Icons.calculate, color: Color(0xFFC86632), size: 30),
    Icon(Icons.science, color: Color(0xFF3FA538), size: 30),
    Icon(Icons.language, color: Color(0xFFB33C43), size: 30)
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Icon(
                      Icons.home,
                      size: 30,
                      color: Colors.white,
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WelcomeScreen()),
                      );
                    },
                  ),
                  GestureDetector(
                    child: Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.white,
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFF7F6FB),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                      label: Text("Search")
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Select Subject",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Flexible(
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: categoryNames.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.9
                    ),
                    itemBuilder: (context, index){
                      return Container(
                        margin: EdgeInsets.all(7),
                        height: 50,
                        width: MediaQuery.of(context).size.width / 2 -20,
                        decoration: BoxDecoration(
                            color: Color(0xFFF7F6FB),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            (categoryIcons[index]),
                            SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(categoryNames[index],
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16
                                    )),
                                Text(
                                  "10 Videos",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 13,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  )
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Courses for you",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  TextButton(
                    onPressed: (){

                    },
                    child: Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            CoursePage(),
            SizedBox(height: 10),
          ],
        ),
      )



    );
  }
}



















