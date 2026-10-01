import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/number_varification.dart';
import 'package:whatsapp_clone/profile.dart';

class Login extends StatefulWidget{
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String selectedcountry="India";
  List<String>countries=[
    "India",
    "America",
    "japan",
    "Newyork",
    "Korea",
    "Italy",
  ];

  final numbercontroller=TextEditingController();
  final NUMBERCONTROLLAR=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding:const EdgeInsets.only(top:60),

        child: Center(
          child:Column(

            children: [
              Text("Enter your phone number",style: TextStyle(color:Colors.green,fontSize: 24,fontWeight: FontWeight(700))),
              SizedBox(height: 40),
              Column(

                children: [
                  Text("WhatsApp will need to verify your phone",style: TextStyle(color:Colors.black,fontSize: 16,fontWeight: FontWeight(400))),
                  Text("number.carrier charges may apply.",style: TextStyle(color:Colors.black,fontSize: 16,fontWeight: FontWeight(400)) ),
                      Text("what's my number?",style: TextStyle(color:Colors.green,fontSize: 18,fontWeight: FontWeight(400))),
                      SizedBox(height: 14,),
                      Padding(
                        padding: const EdgeInsets.only(left:40,right: 40),
                        child: DropdownButtonFormField(items: countries.map((String country){
                          return DropdownMenuItem(child: Text(country.toString()),value:country);}).toList(),
                          onChanged: (value) => {
                          setState(() {
                            selectedcountry=value!;
                          })
                          }, value:selectedcountry ,decoration:InputDecoration(
                            enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)
                        ),
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(color:Colors.green )
                              )
                        )
                          ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:30,right:10),
                            child: Container(
                              width: 50,
                              child: TextField(
                                controller: NUMBERCONTROLLAR,
                                decoration: InputDecoration(
                                  hintText:"+91",
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(color:Colors.green)
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),

                                  ),


                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right:10),
                            child: Container(
                              width: 300,
                              child: TextField(
                                controller: NUMBERCONTROLLAR,
                                decoration: InputDecoration(
                                    hintText:"",
                                    border: UnderlineInputBorder(
                                        borderSide: BorderSide(color:Colors.green)
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.green)
                                    )
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 470,),
                      Container(
                        width: 380,
                      child:FloatingActionButton(
                        backgroundColor: Colors.green,
                          onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>NumberVarification()));
                          },
                          child:Text("Next",style: TextStyle(color: Colors.white,fontSize: 20),))

                      )
                ],
              ),
            ],


        ),

      )
      )

    );
  }
}