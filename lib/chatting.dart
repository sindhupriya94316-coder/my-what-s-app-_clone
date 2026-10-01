import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'chat.dart';
import 'camera.dart';
import 'calls.dart';
import 'statuts.dart';

class Chatting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:4 ,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.camera_alt,size: 40,),),
            Tab( child:Text ("CHATS",style: TextStyle(fontSize: 22,color: Colors.white),)),
            Tab(child:Text ("STATUS",style: TextStyle(fontSize: 18,color: Colors.white),)),
            Tab(child:Text ("call",style: TextStyle(fontSize: 22,color: Colors.white),)),
          ]),
           toolbarHeight: 95,
          backgroundColor: Colors.green,
          title: Text("Whatsapp",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight(500)),),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: IconButton(onPressed: (){},
                  icon: Image.asset('assets/images/Search.png',)),
            )
            ]
        ),
        body:TabBarView(children:[
          Camera(),
          Chat(),
          Statuts(),
          Call(),
        ]
        )
      
      
      ),
    );
  }


}