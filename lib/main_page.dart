
import 'package:flutter/material.dart';
import 'package:whatspp_clone_project/databse.dart';
class MainPage extends StatefulWidget{
  @override
  State<MainPage> createState()=>_MainPageState();
}
class _MainPageState extends State<MainPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('WhatsApp',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
        actions: [
          Icon(Icons.qr_code,color: Colors.white,),
          SizedBox(width: 15),
          Icon(Icons.camera,color: Colors.white,),
          SizedBox(width: 10,),
          Icon(Icons.more_vert_outlined,color: Colors.white,)
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
              color: const Color.fromARGB(255, 53, 53, 53),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text('Ask Meta AI or Search',style: TextStyle(color: Colors.grey),)
                ],
                
              ),
            ),
            ),
            SizedBox(height: 15),
            SizedBox(
              height:30,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                
                separatorBuilder: (context,index){
                return SizedBox(width:8);
                },
                itemBuilder: (context, index) {
                  return Container(
               
                    width:100,
                    decoration: BoxDecoration(color:const Color.fromARGB(255, 76, 75, 75),borderRadius: BorderRadius.circular(20)),
                    child: Center(child: Text(Databse.mylist[index]["name"],style: TextStyle(color:Databse.mylist[index]["textcolor"]),)),
              
                  );
                },
                itemCount:Databse.mylist.length,
              
              ),
            ),
            SizedBox(height:15),
            Row(children: [
              Icon(Icons.lock,color: Colors.white,),
              SizedBox(width:8),
              Text("Locked Chats",style:TextStyle(color:Colors.white)),
            ],),
            SizedBox(height:15),
             Row(children: [
              Icon(Icons.archive_rounded,color: Colors.white),
               SizedBox(width:8),
              Text("Archieved",style:TextStyle(color:Colors.white)),
            ],),
            SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount:Databse.newlist.length,
                itemBuilder:(context,index){
                  return ListTile(
                    leading: CircleAvatar(
                       foregroundImage: AssetImage(Databse.newlist[index]['image']),
                    ),
                    title: Text(Databse.newlist[index]['name'],style: TextStyle(color: Colors.white),),
                    subtitle: Text(Databse.newlist[index]['msge'],style: TextStyle(color: Colors.white)),
                    trailing: Text(Databse.newlist[index]['messegetime'],style: TextStyle(color: Colors.grey),),
                  );
                }
                 ),
            )
            
          ],
        ),
      ),
    );
  }
}