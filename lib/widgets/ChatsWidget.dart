import 'package:flutter/material.dart';

class ChatsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric( horizontal: 15, vertical: 5,),
        child: Column(
          children: [
          for(int i = 1; i < 3; i++)
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                     "images/image s 2.jpeg",
                       height: 65,
                       width: 65,
                        fit: BoxFit.cover,
                    ),
                  ),
                  Padding( 
                    padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ubah",
                      style: TextStyle(
                        fontSize: 18,
                         fontWeight:FontWeight.bold,
                       ),
                      ),
                       SizedBox(
                        height: 8,
                        ),
                        Text(
                          "asc🖐",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                    ],
                  ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        "19:21",
                        style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w500,
                          color: Color(0xff0fce5e)
                        ),
                      ),
                      SizedBox(width: 6,),
                      Container(
                        alignment: Alignment.center,
                        width: 27,
                        height: 27,
                        decoration: BoxDecoration(
                          color: Color(0xff0fce5e),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "5",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                ],
              ),
            ),
            
          ),
        ],
         ),
        
         ),
    );
  }
}