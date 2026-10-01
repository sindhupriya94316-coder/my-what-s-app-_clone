import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/profile.dart';

class NumberVarification extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
      child:Column(
       // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      Container(
        padding: EdgeInsets.only(top: 40,left:40 ),
      child:Text("Verify your Number",style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight(700)),),
      ),
          SizedBox(height:30),
          Text("You’ve tried to register +911234567890",style: TextStyle(fontSize: 17,fontWeight: FontWeight(400)),),
          SizedBox(height: 5,),
          Text("recently. Wait before requesting an sms or a call.",style: TextStyle(fontSize: 17,fontWeight: FontWeight(400)),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Text("with your code",style: TextStyle(fontSize: 17,fontWeight: FontWeight(400))),
              SizedBox(width: 10,),
              Text("Wrong Number",style: TextStyle( color:Colors.green,fontSize: 20,fontWeight: FontWeight(400))),
            ]
          ),
          SizedBox(height: 27,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(color: Colors.green)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    )
                  ),

                ),
              ),
              SizedBox(width: 12,),
              Container(
                width: 50,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(color: Colors.green)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      )
                  ),

                ),
              ),
              SizedBox(width: 12,),
              Container(
                width: 50,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(color: Colors.green)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      )
                  ),

                ),
              ),
              SizedBox(width: 12,),
              Container(
                width: 50,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(color: Colors.green)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      )
                  ),

                ),
              ),
              SizedBox(width: 12,),
              Container(
                width: 50,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(color: Colors.green)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      )
                  ),

                ),
              ),
              SizedBox(width: 12,),
              Container(
                width: 50,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(color: Colors.green)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      )
                  ),

                ),
              )
            ],
    ),
          SizedBox(height: 25,),
          Text("Didn’t receive code?,",style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight(600),)),
          SizedBox(height: 450,),
          Container(
              width: 380,
              child:FloatingActionButton(
                  backgroundColor: Colors.green,
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>Profile()));
                  },
                  child:Text("Next",style: TextStyle(color: Colors.white,fontSize: 20),))

          ),

        ])
      )

    );

  }

}