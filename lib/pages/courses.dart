import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:learning_management_system/pages/course_page.dart';
import 'package:learning_management_system/pages/login_page.dart';
import 'package:learning_management_system/screen/course_screen.dart';
import 'package:learning_management_system/screen/welcome_screen.dart';

class Courses extends StatelessWidget {

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

  List<String> HeaderTitle = [
    "Best way to Learn English",
    "Filipino subject",
    "One plus one",
    "Chemistry",
  ];

  List<String> SubjectImages = [
    "assets/images/english.jpg",
    "assets/images/filipino.jpg",
    "assets/images/math.jpg",
    "assets/images/science.jpg",
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
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "Courses",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                  itemCount: categoryNames.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: (MediaQuery.of(context).size.height - 50 - 150) / (4 * 240),
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index){
                    return InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CourseScreen(HeaderTitle[index], SubjectImages[index])),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        height: 260,
                        width: 220,
                        decoration: BoxDecoration(
                          color: Color(0xFFF7F6FB),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                InkWell(
                                  onTap: (){

                                  },
                                  child: Container(
                                    height: 140,
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => CourseScreen(HeaderTitle[index], SubjectImages[index])),
                                        );
                                      },
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          SubjectImages[index],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              HeaderTitle[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("44 Videos", style: TextStyle(fontSize: 13, color: Colors.black54)),
                                Text("100 hrs", style: TextStyle(fontSize: 13, color: Colors.black54))
                              ],
                            ),
                            Divider(thickness: 1),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    )
                                  ],
                                ),
                                SizedBox(height: 3),
                                Text("100,000 Students", style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600
                                ))

                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20)
            ],
          ),
        )



    );
  }
}



















