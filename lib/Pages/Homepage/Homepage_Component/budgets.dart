import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Budgets extends StatelessWidget {
  List<String> picks = [
    'Pick me  60%',
    'Travel 60%',
    'Fuel     60%',
    'House  60%'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 370,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(21)),
          color: Color(0xffFFFFFF)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: [
            Column(
              children: [
                CircularPercentIndicator(
                  radius: 120.0,
                  lineWidth: 12.0,
                  percent: 0.65,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '80%',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                            fontSize: 19),
                      ),
                      Text("Achieved"),
                    ],
                  ),
                  progressColor: Colors.green,
                ),
                SizedBox(
                  height: 23,
                ),
                Text(
                  'LKR 40,000.00/50,000.00',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Flexible(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 4,
                itemBuilder: (BuildContext context, i) {
                  return
					
				  Column(
			//	  mainAxisAlignment:MainAxisAlignment.end,
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        picks[i],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 11),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      LinearPercentIndicator(
                        width: 60.0,
                        lineHeight: 3.1,
                        percent: 0.6,
                        backgroundColor: Colors.blue,
                        progressColor: Colors.green,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
