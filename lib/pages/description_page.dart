import 'package:flutter/material.dart';

class DescriptionPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(
            "Lorem ipsum dolor sit amet, lorem suspendisse amet suscipit, vel adipiscing excepturi proin magni, rutrum quam rhoncus eget tincidunt euismod amet. Consequat lacus nam leo amet id fringilla, lectus in.",
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
                color: Color(0xFF674AEF),
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
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              SizedBox(width: 5),
              Text("4.5", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,

              ))
            ],
          )
        ],
      ),
    );
  }
}
