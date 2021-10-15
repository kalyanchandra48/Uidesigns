import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 153,
      width: 370,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(26)),
          color: Color(0xffFFFFFF)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Complete your profile  (2/5)',
                  style: TextStyle(
                      color: Color(0xff5B5D61),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                LinearPercentIndicator(
                  width: 230.0,
                  lineHeight: 6.0,
                  percent: 0.4,
                  backgroundColor: Colors.grey,
                  progressColor: Color(0xffCF4921),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Lorem Ipsum is simply dummy text',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'and typesetting industry.',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  color: Colors.black),
              child: Align(
                alignment: Alignment.center,
                child: Icon(Icons.arrow_forward, size: 24, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
