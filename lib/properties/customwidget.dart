import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

custombtn({clr,txt})
{
  return ElevatedButton(onPressed: (){},
          style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: clr,
          fixedSize: Size(300, 48)
          ), 
          child: Text(txt));
}

// menu screen

Rowcustom({img,txt,width})
{
  return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(img,),
              SizedBox(width: width,),
              Text(txt,style: TextStyle(fontSize: 28,fontWeight: FontWeight.w600,color: Colorselect().whitecolor),
              ),
            ],
           );
}


/////////////////////// iphone screen ///////

// customiphone({lead_img,tile_txt,subtxt})
// {
//   return 
//         ListTile(
//           leading: Image.asset(lead_img),
//           title:  Text(tile_txt,style: TextStyle(color: Colorselect().favcolor,fontSize: 20,fontWeight: FontWeight.w700),),
//           subtitle: Text(subtxt,style: TextStyle(color: Colorselect().blacktextcolor,fontWeight: FontWeight.w600),),
//         );
// }











///////////  Custom check out widget //////////

