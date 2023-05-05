import 'package:flutter/material.dart';
import 'package:learning_management_system/screen/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black87,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.5,
              child: Padding(
                padding: EdgeInsets.all(40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "E - Learning",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight:FontWeight.w700,
                          letterSpacing: 1,
                          fontFamily: 'Poppins',
                          wordSpacing: 2,
                          color: Colors.white
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Discover and Improve your skills.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight:FontWeight.w700,
                          fontFamily: 'Poppins',
                          letterSpacing: 1,
                          wordSpacing: 2,
                          color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              padding: EdgeInsets.only(top: 40, bottom: 30),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()
                            ));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 80,
                        ),
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Already have an Account? Here",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        letterSpacing: 1,
                        wordSpacing: 2,
                        color: Colors.black87
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}
