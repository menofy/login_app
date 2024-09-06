import 'package:flutter/material.dart';
import 'package:login_app/pages/login.dart';
import 'package:login_app/pages/signup.dart';
import 'package:login_app/pages/welcom.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: '/',
      routes: {
        '/' :(context)=> const Welcom(),
        '/login':(context)=> const Login(),
        '/signup':(context)=> const Signup(),

        
        
      },
    );
  }
}
