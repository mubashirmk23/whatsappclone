import 'package:flutter/material.dart';
import 'package:whatspp_clone_project/calls_page.dart';
import 'package:whatspp_clone_project/community_page.dart';
import 'package:whatspp_clone_project/main_page.dart';
import 'package:whatspp_clone_project/updates_page.dart';
class Bottomnavigation  extends StatefulWidget{
  @override
  State<Bottomnavigation> createState()=>_BottomnavigationState();
}
class _BottomnavigationState extends State<Bottomnavigation>{
 int selectedindex=0;
  final List<Widget> screen=[
    MainPage(),
    UpdatesPage (),
    CommuntyPage (),
    CallsPage (),  
  ];
  void onitemTap(int index){
    setState(() {
      selectedindex=index;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: onitemTap,
        currentIndex: selectedindex,
        selectedItemColor: const Color.fromARGB(255, 229, 233, 175),
        unselectedItemColor: Colors.white,
        items:[BottomNavigationBarItem(icon:Icon(Icons.chat),label: 'chats'),
           BottomNavigationBarItem(icon:Icon(Icons.update),label: 'updates'),
              BottomNavigationBarItem(icon:Icon(Icons.group),label: 'community'),
                 BottomNavigationBarItem(icon:Icon(Icons.call),label: 'calls'),
        ],
     
         ),

    );
  }
}