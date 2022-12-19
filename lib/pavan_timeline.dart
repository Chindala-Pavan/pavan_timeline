library pavan_timeline;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pavan_timeline/widgets/widgets.dart';
import 'package:timeline_tile/timeline_tile.dart';

class PavanTimeline extends StatefulWidget {
  PavanTimeline({Key? key, required this.started, required this.ended, required this.reached, required this.children}) : super(key: key);
  final bool started;
  final bool ended;
  final int reached;
  final List<Widget?> children;
  @override
  State<PavanTimeline> createState() => _PavanTimelineState();
}

class _PavanTimelineState extends State<PavanTimeline> {

  List<Map<String, dynamic>> data = [];
  dynamic init_data() {
    var children = widget.children;
    List<Map<String, dynamic>> stop = [];
    for (var i = 0; i < children.length; i++) {
      stop.add({
        'id': i,
        'child': children[i]
      });
    }
    Map<String, dynamic> dummy_data = {
      'started': true,
      'ended': false,
      'reached': 2,
      'data': stop,
    };
    if (dummy_data['reached'] > children.length) {
      dummy_data['reached'] = 0;
    }
    for (var i = 0; i < dummy_data['data'].length; i++) {
      print("dummy_data['data'].length ${dummy_data['data'].length}");
      if (stop[i]['id'] == 0) {
        if (dummy_data['started'] == true) {
          data.add({
            'isFirst': true,
            'beforeLine_color': CColors.green,
            'indicator_color': CColors.green,
            'afterLine_color': CColors.green,
            'isLast': false,
            'stop': dummy_data['data'][i]
          });
        } else {
          data.add({
            'isFirst': true,
            'beforeLine_color': CColors.white,
            'indicator_color': CColors.blue,
            'afterLine_color': CColors.white,
            'isLast': false,
            'stop': dummy_data['data'][i]
          });
        }
      } else if (stop[i]['id'] == (dummy_data['data'].length - 1)) {
        if ((stop[i]['id'] == (dummy_data['reached'] + 1)) &&
            (dummy_data['started'] == true)) {
          data.add({
            'isFirst': false,
            'beforeLine_color': CColors.blue,
            'indicator_color': CColors.blue,
            'afterLine_color': CColors.white,
            'isLast': true,
            'stop': dummy_data['data'][i]
          });
        } else {
          if ((stop[i]['id'] == (dummy_data['reached']) ||
                  dummy_data['ended'] == true) &&
              (dummy_data['started'] == true)) {
            data.add({
              'isFirst': false,
              'beforeLine_color': CColors.green,
              'indicator_color': CColors.green,
              'afterLine_color': CColors.green,
              'isLast': true,
              'stop': dummy_data['data'][i]
            });
          } else {
            data.add({
              'isFirst': false,
              'beforeLine_color': CColors.white,
              'indicator_color': CColors.white,
              'afterLine_color': CColors.white,
              'isLast': true,
              'stop': dummy_data['data'][i]
            });
          }
        }
      } else {
        if ((dummy_data['started'] == false)) {
          data.add({
            'isFirst': false,
            'beforeLine_color': CColors.white,
            'indicator_color': CColors.white,
            'afterLine_color': CColors.white,
            'isLast': false,
            'stop': dummy_data['data'][i]
          });
          continue;
        }
        if (stop[i]['id'] == dummy_data['reached'] ||
            dummy_data['ended'] == true ||
            stop[i]['id'] < dummy_data['reached']) {
          data.add({
            'isFirst': false,
            'beforeLine_color': CColors.green,
            'indicator_color': CColors.green,
            'afterLine_color': CColors.green,
            'isLast': false,
            'stop': dummy_data['data'][i]
          });
        }
        // else if() {
        //     data.add({
        //       'isFirst': false,
        //       'beforeLine_color': CColors.green,
        //       'indicator_color': CColors.green,
        //       'afterLine_color': CColors.green,
        //       'isLast': false,
        //       'stop': dummy_data['data'][i]
        //     });
        // }
        else {
          if (stop[i]['id'] == (dummy_data['reached'] + 1)) {
            if ((dummy_data['started'] == true)) {
              data.add({
                'isFirst': false,
                'beforeLine_color': CColors.blue,
                'indicator_color': CColors.blue,
                'afterLine_color': CColors.white,
                'isLast': false,
                'stop': dummy_data['data'][i]
              });
            }
          } else {
            data.add({
              'isFirst': false,
              'beforeLine_color': CColors.white,
              'indicator_color': CColors.white,
              'afterLine_color': CColors.white,
              'isLast': false,
              'stop': dummy_data['data'][i]
            });
          }
        }
      }
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          for (var i in data) ...[
            CustomTimeLine(data: i),
          ]
        ],
      ),
    );
    ;
  }
}

class CustomTimeLine extends StatefulWidget {
  late Map<String, dynamic> data;
  CustomTimeLine({Key? key, required this.data}) : super(key: key);

  @override
  State<CustomTimeLine> createState() => _CustomTimeLineState();
}

class _CustomTimeLineState extends State<CustomTimeLine> {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> data = widget.data;
    print("_CustomTimeLineState ${data}");
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.1,
      isFirst: data['isFirst'],
      isLast: data['isLast'],
      indicatorStyle: IndicatorStyle(
        width: 20,
        color: data['indicator_color'],
        padding: EdgeInsets.all(6),
      ),
      endChild: data['stop']['child'],
      beforeLineStyle: LineStyle(
        color: data['beforeLine_color'],
      ),
      afterLineStyle: LineStyle(
        color: data['afterLine_color'],
      ),
    );
  }
}

class RightChild extends StatelessWidget {
  const RightChild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: SizedBox(
          width: 290,
          height: 70,
          child: ColoredBox(
            color: Colors.white,
            // child: Stop(),
          ),
        ),
      ),
    );
  }
}
