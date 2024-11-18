
import 'package:flutter/material.dart';
import 'package:whatspp_clone_project/databse.dart';
class UpdatesPage extends StatefulWidget{
  @override
  State<UpdatesPage> createState()=>_UpdatesPageState();
}
class _UpdatesPageState extends State<UpdatesPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Updates',style: TextStyle(color: Colors.white,fontSize: 25,),),
        actions: [
          Icon(Icons.qr_code,color: Colors.white,),
          SizedBox(width: 15),
          Icon(Icons.camera_alt,color: Colors.white,),
          SizedBox(width: 10,),
          Icon(Icons.search,color: Colors.white,),
          SizedBox(width: 10,),
          Icon(Icons.more_vert_outlined,color: Colors.white,)
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Text('Status',style: TextStyle(color: Colors.white,fontSize: 25,),),
            SizedBox(height: 20),
            SizedBox(height: 100,
              child: ListView.separated(
                shrinkWrap: true,
               
                scrollDirection: Axis.horizontal,
                itemCount: Databse.newlist.length,
                itemBuilder:(context,index){
                  return Container(
                    child:Column(
                      children:[
                        Container(
                           height: 50,
                   width: 50,
                   decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(Databse.newlist[index]['image']),),
                   ),
                   
                   

                        ),
                        SizedBox(height:10),
                        Text(Databse.newlist[index]["name"],style:TextStyle(color:Colors.white)),
                      ],)
                  
                   
                  );
                  
            
                },
                 separatorBuilder:(context,index){
                  return SizedBox(width: 15);
                
                 }
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text('channels',style: TextStyle(color: Colors.white,fontSize: 20),),
            Spacer(),
            Text('Explore',style: TextStyle(color: Colors.green,fontSize: 16),),
            SizedBox(width: 5),
            Icon(Icons.arrow_forward_ios,color: Colors.green,size: 12,),
              ],
            ),
            SizedBox(height: 15),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                foregroundImage: AssetImage('assets/images/job.jpg'),),
              title: Text('Live Job Openings....',style: TextStyle(color: Colors.white),),
              subtitle: Text('Immediate Internship Oppo..',style: TextStyle(color: Colors.white),),
              trailing: Text('18/11/24',style: TextStyle(color: Colors.grey),),
            ),
            SizedBox(height: 15),
            Text('Find channels',style: TextStyle(color: Colors.white,fontSize: 18),),
            SizedBox(height: 20),
            SizedBox(height: 120,
              child: ListView.separated(
                shrinkWrap: true,
               
                scrollDirection: Axis.horizontal,
                itemCount: Databse.newlist.length,
                itemBuilder:(context,index){
                  return Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color.fromARGB(255, 134, 133, 133)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:Column(
                      children:[
                        Container(
                           height: 50,
                   width: 50,
                   decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(Databse.newlist[index]['image'])),
                   ),
                  
                   
                   

                        ),
                        SizedBox(height: 10),
                        Text(Databse.newlist[index]['updatetext'],style: TextStyle(color: Colors.white),),
                        SizedBox(height: 5),
                        Container(
                          width: 90,
                          height: 25,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(195, 58, 83, 59),
                            borderRadius: BorderRadius.circular(15),
                            
                          ),
                          child: Center(child: Text('Follow',style: TextStyle(color: Colors.white),)),
                        ),
                      
                        
                        
                      ],
                      
                      ),
                      
                      
                  
                   
                  );
                  
                  
            
                },
                 separatorBuilder:(context,index){
                  return SizedBox(width: 15);
                
                 }
              ),
            ),
            SizedBox(height: 40,),
            Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                 color: Colors.green,
                 borderRadius: BorderRadius.circular(20),
              ),
              child: Center(child: Text('Explore more',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
             
            ),
          
          ]
        
        
              
                    ),
                    
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        
      },child: Icon(Icons.camera_alt),backgroundColor: Colors.green,),
                );
               }
  }
