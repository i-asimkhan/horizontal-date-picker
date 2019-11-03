import 'package:flutter/material.dart';
import 'package:horizontal_date_picker/horizontal_date_picker.dart';
import 'package:horizontal_date_picker/date_row.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }
  DateTime chosen=DateTime.now();
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Container(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              HorizontalDatePicker(
                onDateChoosen: (date){setState(() {
                 chosen=date; 
                });},
                inintialDate: DateTime.now(),
                height: 60,
                builder: (context, i, d) {
                  if (i != 2)
                    return DateRow(d
                   );
                  else
                    return DateRow(
                      d,
                      background: Colors.blue,
                      chosenDayStyle: TextStyle(color: Colors.white),
                      chosenDayOfWeekStyle: TextStyle(color: Colors.white),
                      chosenMonthStyle: TextStyle(color: Colors.white),
                    );
                },
              ),
            
              Text('chosen date',style:TextStyle(fontWeight: FontWeight.w500),),
              Text(DateFormat.yMd().format(chosen),style: TextStyle(color: Colors.blue,fontSize: 20,),)
            ],
          ),
        )),
      ),
    );
  }
}