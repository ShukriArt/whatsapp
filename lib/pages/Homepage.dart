import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/CallsWidget.dart';
import 'package:whatsapp_ui/widgets/ChatsWidget.dart';
import 'package:whatsapp_ui/widgets/StatusWidget.dart';


class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
     child: Scaffold(
      appBar: PreferredSize(
        // custom height to app bar
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          elevation: 1,
          title: Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              "WhatsApp",style: TextStyle(fontSize: 21),
            ),
          ),
          
          actions: [
             Padding(
              padding: EdgeInsets.only(top: 12, right: 20),
              child: Icon(Icons.camera_alt_outlined,size: 28,),
            ),
            Padding(
              padding:EdgeInsets.only(top: 12, right: 10),
              child: Icon(Icons.search,size: 28,
              ),
            ),
           PopupMenuButton(
            elevation: 10,
              padding: EdgeInsets.symmetric(vertical: 20),
              iconSize: 28,
               itemBuilder: (context)=>[
                PopupMenuItem(
                  value: 1,
                  child: Text("New Group",
                  style: TextStyle(
                    fontSize: 17,
                   fontWeight: FontWeight.w500,
                   ),
                  ),
                  ),
                  PopupMenuItem(
                  value: 2,
                  child: Text("New broadcast",
                  style: TextStyle(fontSize: 17,
                   fontWeight: FontWeight.w500,
                   ),
                  ),
                  ),
                  PopupMenuItem(
                  value: 3,
                  child: Text("Linked devices",
                  style: TextStyle(fontSize: 17,
                   fontWeight: FontWeight.w500,
                   ),
                  ),
                  ),
                  PopupMenuItem(
                  value: 4,
                  child: Text("Starred messages",
                  style: TextStyle(fontSize: 17,
                   fontWeight: FontWeight.w500,
                   ),
                  ),
                  ),
                  PopupMenuItem(
                  value: 5,
                  child: Text("Stettings",
                  style: TextStyle(fontSize: 17,
                   fontWeight: FontWeight.w500,
                   ),
                  ),
                  ),
              ],
            ),
          ],
        ),
      ),
      body: Column(children: [
        Container(
          color: Color(0xff075E55),
          child:  TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 4,
            labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            tabs: [
              //  tab 1
              Container(width: 24, child: Tab(
                icon: Icon(Icons.groups_2_outlined),
              ),
              //  tab 2
              ),
              Container(
                width: 90,
                 child: Tab(
                  child: Row(children: [
                    Text("Chats"),
                    SizedBox(width: 8,),
                    Container(
                      alignment: Alignment.center,
                      // padding: EdgeInsets.all(10),
                      height: 28,
                      width: 28,
                     decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20) 
                      ),
                      child: Text(
                        "242",
                        style: TextStyle(
                          color: Color(0xff075E55),
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                  ),
                ),
              ),
               //  tab  3
        Container(
          width: 85,
          child: Tab(
            child: Text("Status"),
            ),
            ),
            // tab 4
        Container(
          width: 85,
          child: Tab(
            child: Text("Calls"),
            ),
            ),
            ],
          ),
        ),
         Flexible(flex: 1,
           child: TabBarView
           (children:[
        //     // tab 1 groups widget
           //   GroupWidget(),
              Container(color: Colors.black),
        //      // tab 2 chats widget
              ChatsWidget(),
        //      // tab 3 status widget
              StatusWidget(),
        //      // tab 4 calls widget
              CallsWidget(),
           ],
          
           ),
         ),
      ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff075e55),
        child: Icon(Icons.message),
      ),
     ),
     );
      
    
  }
}

