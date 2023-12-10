import 'package:flutter/cupertino.dart';
import  'package:flutter/material.dart';

class CallsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
       child: Padding(
        padding: EdgeInsets.symmetric( horizontal: 15, vertical: 5,),
        child: Column(
          children: [
            for(int i = 1; i < 2; i++)
            Container(
          margin:EdgeInsets.symmetric(vertical: 12),
           child:Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(40),
               child: Image.asset("images/image c$i.jpeg",
                height: 60,
                width: 60,
                fit: BoxFit.cover,
          ),
          ),
          Padding(padding: EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Eng Rahma",
                style: TextStyle(fontSize: 18, 
                fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.call_made,
                  color: Color(0xff075e55),
                    size: 19,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "(1) Today,12:39",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
              ],
              ),
            ],
          ),
          ),
          Spacer(),
          Container(
            child:Icon(Icons.call_sharp,
            color: Color(0xff075e55),
            ), 
            ),
         ],
        ),
       ), 
        for(int i = 1; i < 2; i++)
            Container(
          margin:EdgeInsets.symmetric(vertical: 12),
           child:Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(40),
               child: Image.asset("images/image s 6.jpeg",
                height: 60,
                width: 60,
                fit: BoxFit.cover,
          ),
          ),
          Padding(padding: EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Eng Shukri",
                style: TextStyle(fontSize: 18, 
                fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.call_received,
                  color: Colors.red,
                    size: 19,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "(1) Today,12:39",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
              ],
              ),
            ],
          ),
          ),
          Spacer(),
          Container(
            child:Icon( 
           // CupertinoIcons.videocam_fill,
           Icons.videocam,
            color: Color(0xff075e55),
            size: 28,
            ), 
            ),
         ],
        ),
       ),   
      ],
     ),
    ), 
   );
  }
}