import 'package:flutter/material.dart';


class CourseListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:
        Stack(
          children: [
            // Add the background image here
            Positioned.fill(
              child: Image.asset(
                'assets/bg.jpg',
                fit: BoxFit.cover,
              ),
            ),
            // Add the rest of the content here
            Container(
              margin: EdgeInsets.all(50),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ListView(
                children: [
                  SizedBox(height: 15),
                  Center(
                    child: Text(
                      'List of my courses',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 15),
                  InkWell(
                    onTap: () {
                      // Add your code here for when the user clicks on the item
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Filipino',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height:5),
                          LinearProgressIndicator(
                            value:0.5,
                            color: Colors.blue,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Progress.. 50%',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Add your code here for when the user clicks on the item
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'English',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height:5),
                          LinearProgressIndicator(
                            value: 0.75,
                            color: Colors.redAccent,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Progress.. 75%',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Add your code here for when the user clicks on the item
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Math',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height:5),
                          LinearProgressIndicator(
                            value: 0.3,
                            color: Colors.amber,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Progress.. 30%',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Add your code here for when the user clicks on the item
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Chemistry',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 5),
                          LinearProgressIndicator(
                            value: 0.4,
                            color: Colors.deepOrangeAccent,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Progress.. 40%',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
    );

  }
}