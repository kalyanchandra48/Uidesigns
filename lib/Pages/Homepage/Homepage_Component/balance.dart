import 'package:flutter/material.dart';

class Balance extends StatelessWidget {
  List<IconData> icons = [
    Icons.swap_horiz,
    Icons.list_alt,
    Icons.qr_code,
    Icons.call_split
  ];

  List<String> iconnames = ['Transfer', 'Billers', 'Pay', 'Split'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 370,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color(0xffFFFFFF)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total balance',
                      style: TextStyle(fontSize: 14,color:Colors.grey),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'LKR',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          TextSpan(
                            text: ' 100,100,123.126',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  // width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      color: Color(0xffF15222)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 9,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            color: Colors.black),
                        //	SizedBox(width:4,),
                        child: Align(
                          alignment: Alignment.center,
                          child: Icon(Icons.add, size: 24, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Add Money',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 110,
                width: 370,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: ListView.separated(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, i) {
                      return SizedBox(
                        width: 20,
                      );
                    },
                    itemBuilder: (context, i) {
                      return Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18)),
                                color: Color(0xffFDF5F0)),
                            child: Icon(icons[i],
                                size: 34, color: Color(0xffDE3A18)),
                          ),
                          SizedBox(height: 8),
                          Text(iconnames[i],style:TextStyle(
							  color:Colors.grey),),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),

          //Row(
          //		  children:[
          //	  Text(iconnames[i]),
          //		  ],
          //),
        ],
      ),
    );
  }
}
