import 'package:flutter/material.dart';
import 'package:horizontal_date_picker/date_helper.dart';
import 'package:intl/intl.dart';

///raw in datePicker
class DateRow extends StatelessWidget {
  ///constructor
  DateRow(this.dateTime,
      {this.background,
      this.chosenDayOfWeekStyle,
      this.chosenDayStyle,
      this.chosenMonthStyle,
      this.width});
//
  double width;

  ///backgroundcolor
  Color background;

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
    return Container(
        color: background,
        width: width,
        child: Padding(
            padding: EdgeInsets.only(right: 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      DateFormat('EEE').format(dateTime),
                      style: chosenDayOfWeekStyle,
                    ),
                    Text(
                      dateTime.day.toString(),
                      style: chosenDayStyle,
                    ),
                    Text(
                      DateFormat('MMM').format(dateTime),
                      style: chosenMonthStyle,
                    )
                  ],
                ),
              ],
            )));
  }
}
