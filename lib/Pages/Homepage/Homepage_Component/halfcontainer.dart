import 'package:flutter/material.dart';
import 'appbar.dart';
import 'message.dart';

class Half_Container extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      width: 430,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(41)),
          color: Color(0xffEFEFEF)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Appbar(),
            SizedBox(
              height: 10,
            ),
            Message(),
          ],
        ),
      ),
    );
  }
}
