import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_ui/main.dart';
import 'package:test_ui/properties/colors.dart';
import 'package:test_ui/screens/login.dart';
import 'package:test_ui/screens/signup.dart';

class splash_view extends StatefulWidget {
  const splash_view({super.key});

  @override
  State<splash_view> createState() => _splash_viewState();
}

class _splash_viewState extends State<splash_view> {
  
   @override
   void initState() {
     super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => signup_view(),)
      );
    } ); 
   }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Container(
            height: 400, 
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            color: Color(0xff0D986A),
            ),
            child: Stack(children: [
              Image.asset("splash_back_log.png"),
              
              Align(alignment: Alignment.center,
              child: Image.asset("splash_logo.png",height: 160,)),
            
              Positioned(
                top: 300,
                left: 120,
                child: Text("PLANTIFY",style: TextStyle(fontSize: 34,color: Colorselect().whitecolor,fontWeight: FontWeight.w700),))      
            ],),  
           ),

          Container(
          child:
        const   Padding(
             padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
             child: Text("GET READY \nBE HIGYENIC",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700,
             color: Color(0xff0D986A),
             ),),
           ),
           ),

        const   Padding(
              padding:  EdgeInsets.fromLTRB(20, 10, 0, 0),   
             child: Text("Jelajahi AiLearn untuk menambah kemampuanmu dalam mengoperasikan Adobe Illustrator",
             style: TextStyle(fontSize: 14, color: Color(0xff0D986A)),
             ),
           ),
    const  SizedBox(height: 60,),
        
      Align(
        child: ElevatedButton(onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => signup_view()
        )
        );
      
          }, 

          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff0D986A),
            padding: EdgeInsets.all(1),
            fixedSize: Size(280, 48),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
          ),

         child:Text("Submit"),
      
           ),
      ),
         
        ],
      ),
    
    );
  }
}