import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class InfoPageView extends StatefulWidget {
  @override
  _InfoPageViewState createState() => _InfoPageViewState();
}

class _InfoPageViewState extends State<InfoPageView> {



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Text('Contact Khatib dairy:',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w700,fontSize: 18),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40),
            child: Text('Complaints/resumptions/cancellation of services should to stated to the dairy branch.',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 14),),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: RaisedButton.icon(
              label: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Call us',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
              ),
              icon: Icon(Icons.call_rounded,color: Colors.white,),
              color: Colors.green[500],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
              onPressed: (){},
            ),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Text('About Khatib dairy:',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w700,fontSize: 18),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40),
            child: Text('One of the most promising and leading milk seller in Nashik city.',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 14),),
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Text('Milk recipe of the day:',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w700,fontSize: 18),),
          ),
          SizedBox(height: 15,),
          Stack(
            children: [
              IconButton(
                icon: Lottie.network("https://assets9.lottiefiles.com/private_files/lf30_fqBsFC.json",height: 200,width: 200),
                iconSize: 200,
                onPressed: (){},
                highlightColor: Colors.orange[100],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40,right: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Kaju Katli',style: TextStyle(color: Colors.brown[200],fontWeight: FontWeight.w700,fontSize: 32),),
                    Text('Guests showing up?Loved by most.\n',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 14),),
                    Text('Tap below to see the video and turn into a chef with Khatib dairy products.',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 14),),
                  ],
                ),
              ),
            ],
          ),



          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Text('App by dotdevelopingteam:',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w700,fontSize: 18),),
          ),
          SizedBox(height: 10,),
          // Center(
          //   child: Card(
          //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          //     child: ClipRRect(
          //       child: Image.asset("assets/milk.png",height: 200,width: 200,),
          //       borderRadius: BorderRadius.circular(50),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
