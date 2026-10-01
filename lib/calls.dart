import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Call extends StatelessWidget{
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
    
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(height: 20,),
          Row(
          children: [
            SizedBox(width: 20,),

        Text("Recent",style: TextStyle(fontSize: 26),)]),


          Expanded(child:
          ListView.builder(
            itemCount: arrContent.length,
              itemBuilder: (context,index){

            return ListTile(
              leading: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(arrContent[index]["image"].toString()),
                
              ),
              title: Text(arrContent[index]["name"].toString()),
              subtitle: Text(arrContent[index]["time"].toString()),
              trailing: Icon(Icons.phone,color: Colors.green,),
            );
          }))
        ],
        
      )

    );
  }

}