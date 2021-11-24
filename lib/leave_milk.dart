import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LeaveMilkView extends StatefulWidget {
  @override
  _LeaveMilkViewState createState() => _LeaveMilkViewState();
}

class _LeaveMilkViewState extends State<LeaveMilkView> {

  DateTime selectedDate = DateTime.now();
  DateTime dateToday = DateTime.now();

  Future<void> _selectDate2(BuildContext context) async {

    final DateTime picked = await showDatePicker(
        context: context,
        helpText: 'SELECT A DATE TO REQUEST MILK!',
        fieldLabelText: 'Enter a valid date.',
        initialDate: selectedDate,
        firstDate: DateTime(dateToday.year, dateToday.month,dateToday.day),
        lastDate: DateTime(dateToday.year,dateToday.month,dateToday.day).add(Duration(days: 7)));

    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 25,),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text('Your milk leave:',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w700,fontSize: 18),),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 40,right: 40),
          child: Text('You can add a leave for a day/days. To add multiple days, add leave for each day.',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 14),),
        ),


        SizedBox(height: 45,),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text('Tap below to select a date',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w500,fontSize: 16),),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: FlatButton.icon(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
            label:Text(selectedDate.day.toString()+"-"+selectedDate.month.toString()+"-"+selectedDate.year.toString(),style: TextStyle(color: Colors.grey[800],fontSize: 18,fontWeight: FontWeight.w500),),
            icon: Icon(Icons.calendar_today_rounded,color: Colors.red[700],),
            onPressed: (){
              _selectDate2(context);
            },
          ),
        ),

        SizedBox(height: 10,),

        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: RaisedButton(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Create leave',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
            ),
            color: Colors.red[900],
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
            onPressed: (){},
          ),
        ),

        SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.only(left: 40,right: 40),
          child: Text('Leave created will appear in the second section.\nLeave created cannot be cancelled!',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 14),),
        ),
      ],
    );
  }
}


