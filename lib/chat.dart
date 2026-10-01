import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget{
  var arrContent=[
  {
    "image":"assets/images/h.webp",
    "name":"priya",
    "lastmessage":"how are you dear",
    "time":"5;50pm",
    "mess":"5",
  },
    {
      "image":"assets/images/a.webp",
      "name":"sindhu",
      "lastmessage":"what are yoy doing",
      "time":"4:50 pm",
      "mess":"4",
    },
    {
"image":"assets/images/h.webp",
"name":"anya",
"lastmessage":"how are you dear",
"time":"5;50pm",
"mess":"5",
},
    {
      "image":"assets/images/a.webp",
      "name":"om",
      "lastmessage":"what are yoy doing",
      "time":"4:50 pm",
      "mess":"4",
    },
    {
      "image":"assets/images/a.webp",
      "name":"bhiya",
      "lastmessage":"what are yoy doing",
      "time":"4:50 pm",
      "mess":"4",
    },
    {
      "image":"assets/images/a.webp",
      "name":"om",
      "lastmessage":"what are yoy doing",
      "time":"4:50 pm",
      "mess":"4",
    },
    {
      "image":"assets/images/a.webp",
      "name":"om",
      "lastmessage":"what are yoy doing",
      "time":"4:50 pm",
      "mess":"4",
    },




  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:ListView.builder(
          itemCount: arrContent.length,
            itemBuilder:(context,index)
        {
          return ListTile(
            leading: CircleAvatar(
              radius: 50,
                backgroundImage:AssetImage(arrContent[index]["image"].toString(),),
              //backgroundImage: AssetImage("assets/images/a.webp"),
            ),
            title: Text(arrContent[index]['name'].toString(),style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
           subtitle: Text(arrContent[index]['lastmessage'].toString(),style: TextStyle(color: Colors.black38),),
            trailing: Column(
              children: [
                Text(arrContent[index]["time"].toString(),style: TextStyle(fontSize: 15),),
                CircleAvatar(
                radius: 13,
                backgroundColor: Colors.green,
                child: Text(arrContent[index]["mess"].toString(),style: TextStyle(color: Colors.white)),)
              ],
            ),
          );

        }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40))
          ),
          onPressed: (){},
        child:Icon(Icons.chat,color: Colors.white,)
      ),
            
    );


  }

}