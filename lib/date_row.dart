import 'package:flutter/material.dart';
import 'package:horizontal_date_picker/date_helper.dart';
import 'package:intl/intl.dart';

///raw in datePicker
class DateRow extends StatelessWidget {
  ///constructor
  DateRow(this.dateTime, {this.background,this.chosenDayOfWeekStyle,this.chosenDayStyle,this.chosenMonthStyle});

  ///backgroundcolor
  Color background;

  double _width;
  double _rightPadding = 10;

  ///row date
  final DateTime dateTime;

  ///chosen  month style
  TextStyle chosenMonthStyle;

  ///chosen day style
  TextStyle chosenDayStyle;

  ///chosen weekDay style
  TextStyle chosenDayOfWeekStyle;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, BoxConstraints boxConstraints) {
        print(boxConstraints.maxWidth);
        _width = getGreedyWidth(context, boxConstraints.maxWidth);
        return Container(
            color: background,
            width: _width / 5,
            child: Padding(
                padding: EdgeInsets.only(right: 0),
                child:  Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                        
                      children: <Widget>[
                        Text(DateFormat('EEE').format(dateTime),style: chosenDayOfWeekStyle,),
                        Text(dateTime.day.toString(),style:chosenDayStyle,),
                        Text(dateTime.month.toString(),style: chosenMonthStyle,)
                      ],
                    ),
                  ],
                )));
      },
    );
  }
}
