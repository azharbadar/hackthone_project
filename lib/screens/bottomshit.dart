import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_ui/properties/colors.dart';

class bottomshit_view extends StatefulWidget {
  const bottomshit_view({super.key});

  @override
  State<bottomshit_view> createState() => _bottomshit_viewState();
}

class _bottomshit_viewState extends State<bottomshit_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       child: Column(
        children: [
     
          Container(
          height: 70,
          decoration: BoxDecoration(
          color: Colorselect().favcolor,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 20),
                  child: Image.asset("sheet_img.png",color: Colorselect().whitecolor,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Text("View 3 items",style: TextStyle(color: Colorselect().whitecolor,fontSize: 14,fontWeight: FontWeight.w600),),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(left: 140,top: 10),
                  child: Text("\$1090",style: TextStyle(color: Colorselect().whitecolor,fontSize: 18,fontWeight: FontWeight.w600),),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20,top: 10,bottom: 4),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Similar Plants",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),)),
          ),
     
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
                
            Container(
              height: 130,
              width: 155,
              decoration: BoxDecoration(
                color: Colorselect().lightgreen,
                borderRadius: BorderRadius.circular(20)
              ),
              child: 
              Column(
                children:[ 
                  Stack(children: [
                const  Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10,left: 10),
                    child: Text("Air\nPurifier",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                  )),
                  Positioned(
              top: 10,
              right:40,
              child: Image.asset("sheet_hnd.png")),
              
            
                  ],),
             
              const Padding(
                    padding: EdgeInsets.only(right: 46,top: 0),
                    child: Text("Peperomia",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                  ),
                
              Row(children:const [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10,top: 6),
                      child: Text("\$400",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                    )),
                    SizedBox(width: 60),
                    Icon(Icons.favorite)
                ],)
              ]),
              
            ),
          
          const   SizedBox(width: 20,),
            Container(
              height: 130,
              width: 155,
              decoration: BoxDecoration(
                color:const Color(0xffFFF1C2),
                borderRadius: BorderRadius.circular(20)
              ),
              child: 
              Column(
                children:[ 
                  Stack(children: [
                const  Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10,left: 10),
                    child: Text("Air\nPurifier",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                  )),
            Positioned(
              top: 10,
              right:40,
              child: Image.asset("sheet_hnd.png")),
            
                  ],),
             
              const Padding(
                    padding: EdgeInsets.only(right: 80,top: 0),
                    child: Text("Cactus",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                  ),
                
              Row(children:const [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10,top: 6),
                      child: Text("\$400",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                    )),
                    SizedBox(width: 60),
                    Icon(Icons.favorite_border_outlined)
                ],)
              ]),
              
            ),
                
          
            ],),
          ),
          
     const SizedBox(height: 14,),
          Container(
            width: 375,
            height: 150,
            decoration: const BoxDecoration(
              color: Color(0xffF5EDA8)
            ),
            child: Row(
              children: [
                Column(
                 children:[
                    
                  
          const   Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:  EdgeInsets.only(left: 20,top: 10),
                        child: Text("That very plant?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                      )),
                const     Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20,top: 8),
                          child: Text("Just Scan and the AI\nwill know exactly",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,height: 1.5)),
                        )),
                        
          Align(alignment: Alignment.centerLeft,
                child: Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                border: Border.all(color: Colorselect().favcolor)
                ),
                child: Align(
                heightFactor: 1,
                widthFactor: 2,
                alignment: Alignment.center,
                child: Text('Scan Now',style: TextStyle(color: Colorselect().favcolor),)),
          ),
          ),
                ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,bottom: 10),
                  child: Image.asset("scan.png",height: 110,width: 110,),
                )
              ],
            ),
          ),
     
        ],
       ),
     ),
    );
  }
}