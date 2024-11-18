import 'package:flutter/material.dart';
import 'package:whatspp_clone_project/databse.dart';
class CallsPage extends StatefulWidget{
  @override
  State<CallsPage> createState()=>_CallsPageState();

  }
class _CallsPageState extends State<CallsPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
      appBar: AppBar(
         backgroundColor: Colors.black,
        title: Text('Calls',style: TextStyle(color: Colors.white,fontSize: 25),),
        actions: [
          Icon(Icons.qr_code,color: Colors.white,),
          SizedBox(width: 15,),
          Icon(Icons.camera_alt,color: Colors.white,),
          SizedBox(width: 15,),
          Icon(Icons.search,color: Colors.white,),
          SizedBox(width: 15,),
           Icon(Icons.more_vert,color: Colors.white,),
          SizedBox(width: 15,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Favorites',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.bold),),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text('More',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            SizedBox(height: 10),
             Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 25,
                  child: Icon(Icons.group,color: Colors.white),
                 ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white,width:2),
                    ),
                    child: Center(child: Text('i',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                  ),
                ),
                
                
          ],
        ),
        SizedBox(height: 15),
        Text('Recent',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
         SizedBox(height: 15),
         Expanded(
           child: SizedBox(height: 15,
             child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: Databse.newlist.length,
              itemBuilder: (context,index){
                return ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    foregroundImage: AssetImage(Databse.newlist[index]['image']),
                  ),
                  title: Text(Databse.newlist[index]['name'],style: TextStyle(color: Colors.white),),
                  subtitle: Text(Databse.newlist[index]["time"],style: TextStyle(color: Colors.grey),),
                  trailing: Icon(Databse.newlist[index]["icon"],color: Colors.white,),
                );
              }
             ),
           ),
         )
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed:(){
      },
      child:Icon(Icons.call,color: Colors.black,),backgroundColor: Colors.green,),
      

    );
  }
}