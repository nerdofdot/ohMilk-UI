import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kdf/info_page.dart';
import 'package:kdf/leave_milk.dart';
import 'package:kdf/request_milk.dart';
import 'package:kdf/transaction_history.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}
int _currentIndex = 0;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

List widgetList = [HomePageView(),TransactionHistoryView(),RequestMilkView(),LeaveMilkView(),InfoPageView(),];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Oh! Milk',style: TextStyle(color: Colors.brown[100],fontSize: 40,fontWeight: FontWeight.w500),),
        toolbarHeight: 150,
        backgroundColor: Colors.brown[500],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight:Radius.circular(500) )),
        elevation: 0,
      ),
      bottomNavigationBar: CustomNavigationBar(
        iconSize: 30.0,
        selectedColor: Colors.white,
        strokeColor: Colors.white,
        unSelectedColor: Colors.brown[200],
        backgroundColor: Colors.brown[500],
        borderRadius: Radius.circular(20),
        isFloating: true,
        scaleFactor: 0.01,
        elevation: 0,
        items: [
          CustomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.history_rounded),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_rounded),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.cancel_outlined),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.info_outline_rounded),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body:widgetList[_currentIndex],
    );
  }
}

class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 25,),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text('Khatib dairy profile:',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w700,fontSize: 18),),
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:30),
              child: CircleAvatar(
               child: Image.asset("assets/man.png",height: 90,width: 90,),
               radius: 55,
                backgroundColor:Colors.brown[100] ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Yusuf Shaikh',style: TextStyle(color: Colors.brown[900],fontSize: 18,fontWeight: FontWeight.w700),overflow: TextOverflow.ellipsis,),
                  SizedBox(height: 7,),
                  Text('KHATIB ID',style: TextStyle(color: Colors.grey[700],fontSize: 16,fontWeight: FontWeight.w300)),
                  Text('213',style: TextStyle(color: Colors.grey[700],fontSize: 28,fontWeight: FontWeight.w900)),
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 25,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:30),
              child: CircleAvatar(
                child: Image.asset("assets/milk.png",height: 80,width: 80,),
                radius: 55,
                backgroundColor:Colors.brown[100] ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Remaining\nbalance',style: TextStyle(color: Colors.brown[900],fontSize: 18,fontWeight: FontWeight.w700)),
                  SizedBox(height: 2,),
                  Text('₹ 9723',style: TextStyle(color: Colors.grey[700],fontSize: 31,fontWeight: FontWeight.w900)),
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 45,),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text('The rates today are:',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w700,fontSize: 18),),
        ),
        SizedBox(height: 20,),
        BuffaloRateView(),
        SizedBox(height: 15,),
        CowRateView()

      ],
    );
  }
}

class CowRateView extends StatefulWidget {
  @override
  _CowRateViewState createState() => _CowRateViewState();
}

class _CowRateViewState extends State<CowRateView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left:30),
          child: CircleAvatar(
            child: Image.asset("assets/cow.png",height: 50,width: 50,),
            radius: 40,
            backgroundColor:Colors.grey[300] ,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10,top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Cow\'s\nmilk',style: TextStyle(color: Colors.brown[900],fontSize: 15,fontWeight: FontWeight.w500)),
              Text('₹ 42',style: TextStyle(color: Colors.grey[800],fontSize:22,fontWeight: FontWeight.w900)),
            ],
          ),
        )
      ],
    );
  }
}


class BuffaloRateView extends StatefulWidget {
  @override
  _BuffaloRateViewState createState() => _BuffaloRateViewState();
}

class _BuffaloRateViewState extends State<BuffaloRateView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left:30),
          child: CircleAvatar(
            child: Image.asset("assets/buff.png",height: 50,width: 50,),
            radius: 40,
            backgroundColor:Colors.grey[300] ,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10,top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Buffalo\'s\nmilk',style: TextStyle(color: Colors.brown[900],fontSize: 15,fontWeight: FontWeight.w500)),
              Text('₹ 66',style: TextStyle(color: Colors.grey[800],fontSize: 22,fontWeight: FontWeight.w900)),
            ],
          ),
        )
      ],
    );
  }
}




