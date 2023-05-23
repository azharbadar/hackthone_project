import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_ui/properties/colors.dart';
import 'package:test_ui/properties/customwidget.dart';

class order extends StatefulWidget {
  const order({super.key});

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 120, 0,0),
                child: Image.asset("Eclipse.png",height: 120,),
              ),
              Align(alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18, 70, 8, 0),
                child: Image.asset("Eclipse.png",height: 120,),
              ),
              ),
      
             Align(alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18,  170, 0, 0),
                child: Image.asset("order_line.png",height: 140,),
              ),
              ),
            ],
          ),
        const SizedBox(height: 60,),
          Column(
            children: [
            Text("Order",style: TextStyle(letterSpacing: 4, color: Colorselect().favcolor,fontSize: 36,fontWeight: FontWeight.w800),),
            Text("Recieved",style: TextStyle(letterSpacing: 4, color: Colorselect().favcolor,fontSize: 36,fontWeight: FontWeight.w800),),
        const   SizedBox(height: 16,),
        const   Text("Order ID : #293092309",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
        const   SizedBox(height: 60,),
            Image.asset("recieve_logo.png",height: 120,),
          const SizedBox(height: 30,),
            // ElevatedButton(onPressed: (){},
            // style: ElevatedButton.styleFrom(
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(20),
            // ),
            // backgroundColor: Colorselect().favcolor,
            // fixedSize: Size(300, 48)
            // ), 
            // child:const Text("submit")),
            
            custombtn(clr: Colorselect().favcolor,txt: "Submit"),
      
            ],
          )
      
          ],
        ),
      )
    );
  }
}