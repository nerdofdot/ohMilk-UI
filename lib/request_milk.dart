import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class RequestMilkView extends StatefulWidget {
  @override
  _RequestMilkViewState createState() => _RequestMilkViewState();
}

class _RequestMilkViewState extends State<RequestMilkView> {
  double _currentSliderValue = 0;
  double _currentSliderValue2 = 0;
  DateTime selectedDate = DateTime.now();
  DateTime dateToday = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {

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
          child: Text('Request extra milk here:',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w700,fontSize: 18),),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 40,right: 40),
          child: Text('Not more than 5 liters can be requested. For consuming more call the Khatib branch.',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 14),),
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
            icon: Icon(Icons.calendar_today_rounded,color: Colors.grey[700],),
            onPressed: (){
              _selectDate(context);
            },
          ),
        ),


        SizedBox(height: 25,),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text('Extra buffalo\'s milk (in liters)',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w500,fontSize: 16),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
          child: Slider(
            value: _currentSliderValue,
            inactiveColor: Colors.red[200],
            activeColor: Colors.red[600],
            min: 0,
            max: 5,
            divisions: 10,
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text('$_currentSliderValue'+" liters",style: TextStyle(color: Colors.red[900],fontSize: 28,fontWeight: FontWeight.w900)),
        ),


        SizedBox(height: 25,),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text('Extra cow\'s milk (in liters)',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w500,fontSize: 16),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
          child: Slider(
            value: _currentSliderValue2,
            inactiveColor: Colors.grey[400],
            activeColor: Colors.grey[800],
            min: 0,
            max: 5,
            divisions: 10,
            onChanged: (double value) {
              setState(() {
                _currentSliderValue2 = value;
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text('$_currentSliderValue2'+" liters",style: TextStyle(color: Colors.black87,fontSize: 28,fontWeight: FontWeight.w900)),
        ),
        SizedBox(height: 35,),
        Center(
          child: RaisedButton(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Request milk',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
            ),
            color: Colors.brown[700],
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
            onPressed: (){},
          ),
        )
      ],
    );
  }
}
