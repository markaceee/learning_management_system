import 'package:flutter/material.dart';


class CourseScreen extends StatefulWidget {


  String headerTitle;
  String subjectImage;

  CourseScreen(this.headerTitle, this.subjectImage);



  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  List videoList = [
    "Video 1",
    "Video 2",
    "Video 3",
    "Video 4",
    "Video 5",
    "Video 6",
    "Video 7",
    "Video 8",
    "Video 9",
    "Video 10",

  ];
  bool isVideosSection = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black87,
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.headerTitle,
          style: TextStyle(
            fontWeight:FontWeight.bold,
            letterSpacing: 1
          ),
        ),
      ),
      backgroundColor: Colors.deepPurple,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(20),
                color: Color(0xFFF7F6FB),
                image:DecorationImage(
                  image: AssetImage(widget.subjectImage),
                  fit: BoxFit.cover
                )
              ),
            ),
            SizedBox(height: 10),
            Text(
              '${widget.headerTitle} Complete Course',
              style: TextStyle(
                fontSize: 22,
                fontWeight:FontWeight.w600
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Instructor Resty",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "55 Videos",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  color: Colors.black87,
                  // color: isVideosSection ? Color(0xFF674AEF) : Color(0xFF674AEF).withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        isVideosSection = true;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: Text(
                        "Videos",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Colors.black87,
                  // color: isVideosSection ? Color(0xFF674AEF) : Color(0xFF674AEF).withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        isVideosSection = false;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                      child: Text(
                        "Description",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            isVideosSection ? VideoSection() : DescriptionSection(),
          ],
        ),
      ),
    );
  }

  Widget VideoSection(){
      return ListView.builder(
        itemCount: videoList.length,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index){
          return Container(
            decoration: BoxDecoration(
              color: Color(0xFFF7F6FB),
              borderRadius: BorderRadius.circular(10)
            ),
            margin: EdgeInsets.symmetric(vertical: 3),
            child: ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  color: index == 0 ? Colors.black87 : Colors.black87.withOpacity(0.6),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.white,
                    size: 30
                ),
              ),
              title: Text(
                  videoList[index]
              ),
              subtitle: Text("20 min 59 sec"),
            ),
          );
        },
      );

  }

  Widget DescriptionSection(){
    return Column(
      children: [
        Text(
          "Learning is the process of acquiring new knowledge, skills, behaviors, values, or preferences through experience, study, or instruction. It is a lifelong journey that empowers individuals to adapt and thrive in a constantly changing world. Learning can take many forms, including formal education, informal training, self-directed study, and practical application.",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black.withOpacity(0.6),
          ),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Text("Course Length", style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            )),
            Icon(
              Icons.timer,
              color: Colors.black87,
            ),
            SizedBox(width: 5),
            Text("26 hours", style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,

            ))
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Text("Ratings", style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              ],
            ),
            SizedBox(width: 5),
            Text("4.5", style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,

            ))
          ],
        )
      ],
    );
  }

}
