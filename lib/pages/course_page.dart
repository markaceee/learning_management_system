import 'package:flutter/material.dart';
import 'package:learning_management_system/screen/course_screen.dart';


class CoursePage extends StatelessWidget {
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
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i = 0; i < 4; i++)
            Container(
              margin: EdgeInsets.all(5),
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
                                    builder: (context) => CourseScreen(HeaderTitle[i], SubjectImages[i])),
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                SubjectImages[i],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Text(
                    HeaderTitle[i],
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
                  Divider(thickness: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        ],
      ),
    );
  }
}
