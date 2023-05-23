import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_ui/properties/colors.dart';
import 'package:test_ui/properties/customwidget.dart';

class menu_view extends StatefulWidget {
  const menu_view({super.key});

  @override
  State<menu_view> createState() => _menu_viewState();
}

class _menu_viewState extends State<menu_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorselect().favcolor,
      body: Container(
        // height: MediaQuery.of(context).size.height *20,
        // width: MediaQuery.of(context).size.width*6,
        child: Column(
          children: [
          
           Padding(
             padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
             child: Container(
              height: MediaQuery.of(context).size.height *0.08,
              // width: MediaQuery.of(context).size.width * 0.8,
              alignment: Alignment.bottomRight,
              child: Text("X",style: TextStyle(color: Colorselect().whitecolor,fontSize: 22),)
             ),
           ),

          const  SizedBox(height: 40,),
          Rowcustom(img: "menu_img_1.png",txt: "Shop",width: 20),
          const  SizedBox(height: 40,),
          Rowcustom(img: "menu_img_2.png",txt: "Plant Care",width: 24),
          const  SizedBox(height: 40,),
          Rowcustom(img: "menu_img_3.png",txt: "Community",width: 24),
          const  SizedBox(height: 40,),
          Rowcustom(img: "menu_img_4.png",txt: "My Account",width: 24),
          const  SizedBox(height: 40,),
          Rowcustom(img: "menu_img_5.png",txt: "Track Order",width: 24),
          const  SizedBox(height: 40,),
          Text("Get the dirt",style: TextStyle(color: Colorselect().whitecolor,fontSize: 22,fontWeight: FontWeight.bold),),
          const  SizedBox(height: 30,),
          ElevatedButton(onPressed: (){},
          style: OutlinedButton.styleFrom(
          fixedSize:const  Size(300, 48),
          backgroundColor: Colorselect().favcolor,
          side: BorderSide(
          color: Colorselect().whitecolor,
          width: 2,
          ),
          ),

          child: const Text("Enter Your Email")),
          const  SizedBox(height: 22,),
          Text("FAQ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colorselect().whitecolor),),
          const    SizedBox(height: 22,),
          Text("About US",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colorselect().whitecolor),),
          const    SizedBox(height: 22,),  
          Text("Contact Us",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colorselect().whitecolor),),
          
          ],
        ),
      ),
    );
  }
}