import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_ui/properties/colors.dart';
import 'package:test_ui/properties/customwidget.dart';
import 'package:test_ui/screens/home.dart';
import 'package:test_ui/screens/splash.dart';

class login_view extends StatefulWidget {
  const login_view({super.key});
  
  @override
  State<login_view> createState() => _login_viewState();
}

class _login_viewState extends State<login_view> {
  TextEditingController email_control = TextEditingController();
  TextEditingController pass_control = TextEditingController();

     login(context) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email_control.text,
        password: pass_control.text,
      );
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => home_view()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 10, 0),
            child: Row(
              children: [
                Image.asset("login_logo.png",height: 30,),
          const  SizedBox(width: 10,),
          const  Text("PANTIFY",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
       Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 10, 0),
          child: Text("Login",style: TextStyle(fontSize: 36,color: Colorselect().favcolor),
           ),
        ),
         const   Padding(
              padding:  EdgeInsets.fromLTRB(20, 20, 0, 0),   
             child: Text("Masukan No. Handphone Anda dan tunggu kode autentik dikirimkan",
             style: TextStyle(fontSize: 14, color: Color(0xff0D986A),height: 1.5),
             ),
           ),
          
    const    SizedBox(height: 30,),

        const   Padding(
            padding:  EdgeInsets.fromLTRB(10, 0, 0, 10),
            child: Text("Email / Password"),
          ),
        Padding(
             padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
             child: TextField(
              controller: email_control,
              decoration: InputDecoration(
                hintText: 'Email',
                filled: true,
                fillColor: const Color(0xffE6E8EB),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)
                ),
                prefix: const Icon(Icons.search),
              ),
             ),
           ),


        const  SizedBox(height: 10,),

            const   Padding(
            padding:  EdgeInsets.fromLTRB(10, 0, 0, 1),
            child: Text("Password"),
          ),
          Padding(
             padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
             child: TextField(
              controller: pass_control,
              // controller: email_control,
              decoration: InputDecoration(
                hintText: 'password',
                filled: true,
                fillColor: const Color(0xffE6E8EB),
                border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
                ),
                prefix: const Icon(Icons.search),
              ),
             ),
           ),
         
      const   Padding(
            padding: EdgeInsets.fromLTRB(20, 0,10, 40),
           child: Align(alignment: Alignment.bottomRight,
           child: Text("passowrd")),
         ),

         Align(
        child: ElevatedButton(onPressed: (
        ){
        login(context);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => home_view()
        )
        );
      
          }, 

          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff0D986A),
            padding:const EdgeInsets.all(1),
            fixedSize: const Size(280, 48),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),

          child:  const Text("Submit"),
      
           ),
      ),
        ],
      ),
    );
  }
}