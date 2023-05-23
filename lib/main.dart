import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_ui/screens/bottomshit.dart';
import 'package:test_ui/screens/checkout.dart';
import 'package:test_ui/screens/home.dart';
import 'package:test_ui/screens/iphone.dart';
import 'package:test_ui/screens/login.dart';
import 'package:test_ui/screens/menu.dart';
import 'package:test_ui/screens/order.dart';
import 'package:test_ui/screens/signup.dart';
import 'package:test_ui/screens/splash.dart';
import 'package:test_ui/screens/home.dart';

import 'firebase_options.dart';

void main() async{
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: iphone_view(),
    );
  }
}