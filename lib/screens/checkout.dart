import 'dart:js_util';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_ui/properties/colors.dart';
import 'package:test_ui/screens/order.dart';

class check_view extends StatefulWidget {
  const check_view({super.key});

  @override
  State<check_view> createState() => _check_viewState();
}

class _check_viewState extends State<check_view> {

  int value = 0;
   
  void add()
  {
    setState(() {
      value++;
    });
  }

  void subtract()
  {
    if(value>1)
      setState(() {
      value--;
    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      leading: Image.asset("login_logo.png"),
      title: const Text("PANTIFY",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),
      actions: [Row( children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(children: [
            const Icon(Icons.search,color: Colors.black,),
          const SizedBox(width: 10,),
            Image.asset("Menu.png")
          ],),
        ),
      ],)],
      backgroundColor: Colors.white,
      elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 40,left: 40),
            child: Text("Your Bag",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w700, color: Colorselect().favcolor)),
          ),

Container(
  height: 240,
  child:   ListView(
    shrinkWrap: true,
    // physics: NeverScrollableScrollPhysics(),
    children: [
        // one listtille 
            ListTile(
              leading: Stack(children: [
                Positioned(
                  top: 10,
                  child: Image.asset("rect_1.png")),
                Container(
                  height: 200,
                  child: Image.asset("flwrs_1.png",height: 200 ,)),
              ],),  
              title:const Text("Watermelon Peperomia"),    
              subtitle: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: [
       InkWell(
       onTap: () {
         add();
       },
       
       child:Container(
                 margin: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                  padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.white,
                    border: Border.all(
                      width: 1
                    ),
                  ),
                  child: const Text("+", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                ),
    
    ),
        Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.topLeft,
                height: 20,
                width: 20,
                  child: Text(value.toString(),style: const TextStyle(color: Colors.green,fontSize: 18),),
                            ),
     InkWell(
       onTap: () {
         subtract();
       },
       child:Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                  padding:const EdgeInsets.fromLTRB(6, 2, 6, 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.white,
                    border: Border.all(
                      width: 1
                    ),
                  ),
                  child: const Text("-",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                ),
    ),
  Icon(Icons.delete_outline_outlined,color: Colorselect().favcolor,size: 36,)
                  ],
                ),
              ),
              trailing: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
              Image.asset("assets/list_icon.png",height: 100,),
              const SizedBox(width: 20,),
          const  Text("\$360",style: TextStyle(fontSize: 18),)
          ],
                ),
              ),
            ),

        /// second listtile
      
  const SizedBox(height: 18,),
   ListTile(
              leading: Stack(children: [
              Positioned(
              top: 10,
              child: Image.asset("rect_1.png")),
              Container(
              height: 200,
              child: Image.asset("flwrs_2.png",height: 200 ,)),
              ],),
            title:const Text("Watermelon Peperomia"),
            subtitle: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Row(
            children: [
       InkWell(
       onTap: () {
         add();
       },
       child:Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 8, 0),
              padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: Colors.white,
              border: Border.all(
              width: 1,
              ),
              ),
              child: const Text("+", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
              ),
    ),
    Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),  
            alignment: Alignment.topLeft,
            height: 20,
            width: 20,
            child: Text(value.toString(),style: const TextStyle(color: Colors.green,fontSize: 18),),
            ),
     InkWell(
       onTap: () {
         subtract();
       },
       child:Container(
        margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),  
        padding:const EdgeInsets.fromLTRB(6, 2, 6, 2),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: Colors.white,
        border: Border.all(
        width: 1
        ),
        ),
        child: const Text("-",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
        ),
    ),
  Icon(Icons.delete_outline_outlined,color: Colorselect().favcolor,size: 36,)
  ],
  ),
  ),
  trailing: Padding(
  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
  child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
                  Image.asset("assets/list_icon.png",height: 100,),
                  const SizedBox(width: 20,),
            const Text("\$402",style: TextStyle(fontSize: 18),),
                  ],
                ),
              ),
            ),  
const  SizedBox(height: 18,),
  
  //// third listtile
  
   ListTile(
             leading: Stack(children: [           
             Positioned(
             top: 10,
             child: Image.asset("rect_3.png")),
             Container(
             height: 200,
             child: Image.asset("flwrs_3.png",height: 0,)),
              ],),
              title:const Text("Watermelon Peperomia"),
              subtitle: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
              children: [
       InkWell(
       onTap: () {
         add();
       },
       child:Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                  padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.white,
                  border: Border.all(
                  width: 1
                  ),
                  ),
                  child: const Text("+", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),), 
                ),
    ),
        Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.topLeft,
                height: 20,
                width: 20,  
                child: Text(value.toString(),style: const TextStyle(color: Colors.green,fontSize: 18),),
                ),
     InkWell(
       onTap: () {
         subtract();
       },
       child:Container(
                  margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  padding:const EdgeInsets.fromLTRB(6, 2, 6, 2),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.white,
                  border: Border.all(
                  width: 1,
                  ),
                  ),
                  child: const Text("-",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                ),
    ),
  Icon(Icons.delete_outline_outlined,color: Colorselect().favcolor,size: 36,)
  
                  ],
                ),
              ),
              trailing: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
              Image.asset("assets/list_icon.png",height: 100,),
              const    SizedBox(width: 10,),
              const    Text("\$360",style: TextStyle(fontSize: 18),)
              ],
              ),
              ),
            ),
    
    ],
  ),
),
const SizedBox(height: 30,),

/// Listtile

ListTile(
  leading: Stack(
    children: [
      Image.asset("Eclips_2.png"),
      Image.asset("menu_img_5.png",height: 60,width: 44,color: Colorselect().favcolor,),
    ],
  ),

  title: Row(children:  [
   const Text("Delivery",style: TextStyle(height: 2,fontSize: 16,fontWeight: FontWeight.bold),),
    const  SizedBox(width: 20,),
   Image.asset("line_1.png",),
   Image.asset("line_2.png",width: 40,),
  ],),
  subtitle: Text.rich(TextSpan(text: "Order above ₹1200 to get\nfree delivery",
  children: <InlineSpan>[
    TextSpan(text: " Shop for more ₹190",style: TextStyle(color: Colorselect().favcolor,height: 2))
  ]
  )),
  trailing: const Text("\$80"),
), 



/// listtile


ListTile(
  leading: Stack(
    children: [
      Image.asset("Eclips_2.png"),
      Image.asset("Eclips_inside.png",height: 60,width: 44,color: Colorselect().favcolor,),
    ],
  ),

  title:const Text("Apply Coupon"),
   subtitle: Positioned(
    top: 100,
    child: Image.asset("line_1.png")),
), 

const SizedBox(height: 10,),

Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: const [
    Text("Total",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w800),),
    Text("\$1090",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w800),),
  ],
),


const  SizedBox(height:20,),

Container(
  height: 70,
  decoration: BoxDecoration(
    color: Colorselect().favcolor,
   borderRadius:const BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
    ),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    
    Padding(
      padding: const EdgeInsets.only(right: 18,left: 18),
      child: InkWell(
        onTap: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => order(),)
          );
        },
        child: Text("Checkout",style: TextStyle(color: Colorselect().whitecolor,fontSize: 20))),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 18,left: 18),
      child: Text("\$1090",style: TextStyle(color: Colorselect().whitecolor,fontSize: 20)),
    )
  ],),
)

        ],
      ),
    );
  }
}