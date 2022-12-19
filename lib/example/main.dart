import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pavan_timeline.dart';
import '../widgets/widgets.dart';

class TimeLine extends StatefulWidget {
  const TimeLine({Key? key}) : super(key: key);

  @override
  State<TimeLine> createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(title: Text("Pavan TimeLine")),
            body: Center(
      child: Container(
        height: 490,
        width: 350,
        decoration: BoxDecoration(
            color: c_color(Colors.brown),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.grey,
              width: 1,
            )),
        padding: EdgeInsets.all(2.0),
        child: PavanTimeline(
          started: true,
          ended: false,
          reached: 2,
          children: [
            Container(color: Colors.indigo,height: 30,width: 100,),
            Container(color: Colors.indigo,height: 30,width: 100,),
            Container(color: Colors.indigo,height: 30,width: 100,),
            Container(color: Colors.indigo,height: 30,width: 100,),
            Container(color: Colors.indigo,height: 30,width: 100,)
          ],
        ),
      ),
    )));
  }
}
