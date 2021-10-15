import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 55),
      child: Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: Color(0xffCF846C),
            child: CircleAvatar(
              radius: 32,
              backgroundImage: AssetImage('assets/fan.jpeg'),
            ),
          ),
          SizedBox(
            width: 180,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color(0xffE8E8E8),
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.email,
                size: 20,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color(0xffE8E8E8),
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.notifications,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
