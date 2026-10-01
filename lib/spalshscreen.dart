import 'package:flutter/material.dart';
import 'package:whatsapp_clone/welcome.dart';
class Screen extends StatefulWidget{
  @override
  State<Screen> createState() => _ScreenState();
}
class _ScreenState extends State<Screen> {
  @override
  void initState() {
    super.initState();
        Future.delayed(Duration(seconds:3),()
        {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Welcome()));
        });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/whatsapp 1.png'),
            SizedBox(height:10),
            Text("WhatsApp",style:TextStyle(color: Colors.black,fontWeight:FontWeight(700),fontSize: 22))
          ],
        ),
      )
    );



  }
}