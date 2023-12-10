                                                                                                                          import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric( horizontal: 15, vertical: 5,),
        child: Column(
          children: [
            Container(
          margin:EdgeInsets.symmetric(vertical: 12),
          child:Row(
          children: [
            Container(
              padding: EdgeInsets.all(1.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.grey, width: 3,)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset("images/image s 4.jpeg",
                height: 55,
                width: 55,
                fit: BoxFit.cover,
                ),
              ),
              ),
              Padding(padding: EdgeInsets.only(left: 20,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("My status",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(height: 6),
                  Text("Today, 9:30 pm",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,
                  color: Colors.black54,
                  ),
                  ),
                ],
              ),
              ),
              Spacer(),
             Container(
              child: Icon(Icons.more_vert, 
               color: Color(0xff075E55),
              ),
             ),
             ],
            ),
           ),
           SizedBox(height: 10,),
           Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Recent updates",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
           ),
           for(int i = 1; i < 3; i++)
           Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(1.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset("images/image s 4.jpeg",
                height: 55,
                width: 55,
                fit: BoxFit.cover,
                ),
              ),
              ),
              Padding(padding: EdgeInsets.only(left: 20,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Rukia-Ahmed",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(height: 8,),
                  Text("Today, 10:30 pm",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,
                  color: Colors.black54,
                  ),
                  ),
              ],
            ),
           ),
          ],
        ),
       ),
       SizedBox(height: 20,),
           Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Veiwed updates",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
           ),
           for(int i = 1; i < 3; i++)
           Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(1.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.grey, width: 3),
                  ),
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset("images/image s 4.jpeg",
                height: 55,
                width: 55,
                fit: BoxFit.cover,
                ),
              ),
              ),
              Padding(padding: EdgeInsets.only(left: 20,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Amalziina",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(height: 8,),
                  Text("Yesterday, 1:30 pm",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,
                  color: Colors.black54,
                  ),
                  ),
              ],
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