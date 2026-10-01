import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chatting.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top:50),
          child: Column(
            children: [
              Text('Profile info',style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight(900)),),
              SizedBox(height: 50,),
              Text("Please provide your name and an optional",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:FontWeight(400))),
          SizedBox(height: 10,),
          Text("Profile photo",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight(400))),
              SizedBox(height: 30,),
              CircleAvatar(
                radius: 60,
              // backgroundColor: Colors.white60,
                child: Image.asset('assets/images/photo-camera 1.png',width:70,height:70),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Container(
                width:300,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Type your name here",
                   enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(
                       color: Colors.green
                     ),

                   ),
                  ),
                ),
              ),
            Container(
              width:40,
              height:40 ,

            child: Image.asset('assets/images/happy-face 1.png',height: 40,)),]),
                  SizedBox(height: 330,),
                  Container(
                      width: 370,
                      child:FloatingActionButton(
                          backgroundColor: Colors.green,
                          onPressed: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>Chatting()));
                          },
                          child:Text("Next",style: TextStyle(color: Colors.white,fontSize: 20),))


                  )




              

            ],
          ),
        ),
      ),
    );

  }

}