import 'package:flutter/material.dart';
import 'package:whatspp_clone_project/databse.dart';
class CommuntyPage extends StatefulWidget{
  @override
  State<CommuntyPage> createState()=>_CommuntyPageState();
}
class _CommuntyPageState extends State<CommuntyPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Communities',style: TextStyle(color: Colors.white,fontSize: 25),),
        actions: [
          Icon(Icons.qr_code,color: Colors.white,),
          SizedBox(width: 15,),
          Icon(Icons.camera_alt,color: Colors.white,),
          SizedBox(width: 10,),
           Icon(Icons.more_vert,color: Colors.white,),
          SizedBox(width: 10,),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
       
            color: const Color.fromARGB(255, 49, 44, 44),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                     Container(
                       height: 50,
                       width: 50,
                     decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/WhatsApp Image 2024-11-14 at 2.20.41 AM.jpeg')),
                      borderRadius: BorderRadius.circular(10),
                      
                     ),  
                      
                  ),
                  SizedBox(width: 10,),
                  Text('New community',style: TextStyle(color: Colors.white),)
              
                ],
              ),
            ),

          ),
          SizedBox(height:10,),
           Container(
           
            color: const Color.fromARGB(255, 49, 44, 44),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                     Container(
                       height: 50,
                       width: 50,
                     decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/social.jpg')),
                      borderRadius: BorderRadius.circular(10),
                      
                     ),  
                      
                  ),
                  SizedBox(width: 10,),
                  Text('Social Solutions',style: TextStyle(color: Colors.white),),
                  SizedBox(width:5),
                  Text('TM'),
                   SizedBox(width:5),
                  Container(height:20,width:20,child:Center(child: Text("1",style:TextStyle(color:Colors.white))),decoration: BoxDecoration(color:Colors.grey,borderRadius: BorderRadius.circular(5)),),
                   SizedBox(width:5),
                  Container(height:20,width:20,child:Center(child: Text("1",style:TextStyle(color:Colors.white))),decoration: BoxDecoration(color:Colors.grey,borderRadius: BorderRadius.circular(5)),),

              
                ],
              ),
            ),

          ),
          SizedBox(height: 2,),
          Column(
            children: [
              Container(
                color: const Color.fromARGB(255, 49, 44, 44),
                
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/images/WhatsApp Image 2024-11-14 at 2.20.39 AM(3).jpeg')),
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ) ,
                      title:Text("Announcements",style:TextStyle(color:Colors.white)),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("~Social solutions in https://w..."),
                          
                          CircleAvatar(radius: 3,backgroundColor:Colors.green),
                        ],
                      ),
                      trailing:Text("11/19/24"),
                      ),
                      SizedBox(height:10),
                      Row(
                        children: [
                          Icon(Icons.arrow_forward_ios,size:15,color:Colors.grey),
                              SizedBox(width:10),
                          Text("View All",style:TextStyle(color:Colors.grey)),
                        ],
                      )
                      
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
              Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
       
            color: const Color.fromARGB(255, 49, 44, 44),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                     Container(
                       height: 50,
                       width: 50,
                     decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/WhatsApp Image 2024-11-14 at 2.20.39 AM(2).jpeg')),
                      borderRadius: BorderRadius.circular(10),
                      
                     ),  
                      
                  ),
                  SizedBox(width: 10,),
                  Text('HG Business School 5',style: TextStyle(color: Colors.white),)
              
                ],
              ),
            ),

          ),
          SizedBox(height: 2),
            Column(
            children: [
              Container(
                color: const Color.fromARGB(255, 49, 44, 44),
                
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/images/WhatsApp Image 2024-11-14 at 2.20.39 AM(3).jpeg')),
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ) ,
                      title:Text("Announcements",style:TextStyle(color:Colors.white)),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("~Daniliela Tonight Shar..."),
                          
                          CircleAvatar(radius: 3,backgroundColor:Colors.green),
                        ],
                      ),
                      trailing:Text("8/6/24"),
                      ),
                      SizedBox(height:10),
                      Row(
                        children: [
                          Icon(Icons.arrow_forward_ios,size:15,color:Colors.grey),
                              SizedBox(width:10),
                          Text("View All",style:TextStyle(color:Colors.grey)),
                        ],
                      )
                      
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
                     Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
       
            color: const Color.fromARGB(255, 49, 44, 44),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                     Container(
                       height: 50,
                       width: 50,
                     decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/social.jpg')),
                      borderRadius: BorderRadius.circular(10),
                      
                     ),  
                      
                  ),
                  SizedBox(width: 10,),
                  Text('DREAMPATH:STUDENTNS HE...',style: TextStyle(color: Colors.white),)
              
                ],
              ),
            ),

          ),
          SizedBox(height: 2),
           Column(
            children: [
              Container(
                color: const Color.fromARGB(255, 49, 44, 44),
                
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/images/WhatsApp Image 2024-11-14 at 2.20.39 AM(3).jpeg')),
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ) ,
                      title:Text("Announcements",style:TextStyle(color:Colors.white)),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("~Social solutions in https://w..."),
                          
                          CircleAvatar(radius: 3,backgroundColor:Colors.green),
                        ],
                      ),
                      trailing:Text("11/19/24"),
                      ),
                      SizedBox(height:10),
                      Row(
                        children: [
                          Icon(Icons.arrow_forward_ios,size:15,color:Colors.grey),
                              SizedBox(width:10),
                          Text("View All",style:TextStyle(color:Colors.grey)),
                        ],
                      )
                      
                    ],
                  ),
                ),
              ),




        ]
              )
              
            ],
          ),
        ]
        
          )
        ]
      )
        ]
      )
        ]
      )
    );
  }
}

    