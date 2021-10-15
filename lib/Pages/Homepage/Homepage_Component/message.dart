import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right:250),
          child: Text(
            'Good Morning',
            style: TextStyle(
			    fontSize:18,
              color: Colors.grey,
            ),
          ),),
	  SizedBox(height:5,),
 Text(
            'Christopher David',
            style: TextStyle(
			    fontSize:26,
			    fontWeight:FontWeight.bold,
              color: Colors.black,
            ),
          ),

        
      ],
    );
  }
}
