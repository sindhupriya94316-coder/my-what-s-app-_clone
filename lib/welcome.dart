//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/login.dart';

class Welcome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(

        child:Container(
          width:double.infinity,
          height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/wp2.png'),
            Text("Welcome to WhatsApp",style:TextStyle(color:Colors.black,fontSize: 25,fontWeight: FontWeight(500))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Read out",style:TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight(400))),
                SizedBox(width: 10,),
                Text("Privacy Policy .",style:TextStyle(color: Colors.cyan,fontSize: 16,fontWeight:FontWeight(400))),
                Text("Tap",style:TextStyle(color: Colors.black,fontSize: 16,fontWeight:FontWeight(400))),
                SizedBox(width:5,),
                Text(" 'Agree nd continue' ",style:TextStyle(color: Colors.black,fontSize: 16,fontWeight:FontWeight(400))),
               // SizedBox(width: 10,),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //SizedBox(w: 10,),
                Text("to accept the .",style:TextStyle(color: Colors.black,fontSize: 16,fontWeight:FontWeight(400))),
                SizedBox(width: 7,),
                Text("Terms of service.",style:TextStyle(color: Colors.cyan,fontSize: 16,fontWeight:FontWeight(400))),
              ],
            ),
           //SizedBox(height: 300,),
           Column(

             children: [
               Container(
                 width:300,
                 height:35,
                 child:FloatingActionButton(
                     onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                     },
                     backgroundColor: Colors.green,
                     shape:RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(40)
                     ),

                     child: Text("Agree and continue")
                   ),


                 ),



             ],
           )
          ]



        ),
      )
      )
    );
  }

}