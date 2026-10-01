import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Statuts extends StatelessWidget{
  var arrContent=[
    {
      "image":"assets/images/h.webp",
      "name":"priya",
      "time":"15 min ago",
    },
    {
      "image":"assets/images/h.webp",
      "name":"priya",
      "time":"15 min ago",
    },
    {
      "image":"assets/images/h.webp",
      "name":"priya",
      "time":"15 min ago",
    },
    {
      "image":"assets/images/h.webp",
      "name":"priya",
      "time":"15 min ago",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

            body:Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(width: 20,),
                Text("Status",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)]),
                SizedBox(height:20 ,),
                ListTile(
                leading: Padding(
                    padding: const EdgeInsets.only(left:1),
                child:Stack(
                  children: [
                  CircleAvatar(
                  radius:69,
                  backgroundImage:AssetImage('assets/images/avatar.webp'),
                    child: Container(
                      margin: EdgeInsets.only(top:30,left: 20),
                    child:CircleAvatar(


                      radius: 13,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.add,color: Colors.white,),
                    )),
                  
                ),])),
                  title: Text("My Status",style: TextStyle(fontSize: 25),),
                  subtitle: Text("Tab to add status updates"),
                ),
                SizedBox(height: 20,),
                Row(

                  children: [
                    SizedBox(width:30) ,
                    Text("Recent Updates",style: TextStyle(fontSize: 20),),
                    SizedBox(width:150,),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                SizedBox(height: 20,),
                 Expanded(child:
                 ListView.builder(
                   itemCount: arrContent.length,
                   itemBuilder:(context,index){
                       return ListTile(
                       leading: CircleAvatar(
                         radius: 50,
                          backgroundImage: AssetImage(arrContent[index]["image"].toString()),
                        ),
                     title: Text(arrContent[index]["name"].toString()),
                     subtitle: Text(arrContent[index]["time"].toString()),
                    );
                  }))

              ],
            )

    );
  }

}