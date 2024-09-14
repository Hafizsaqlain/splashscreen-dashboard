import 'dart:async';

import 'package:flutter/material.dart';
import 'package:newproject/loginscreen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    
    Timer(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return LoginScreen();
      }));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.teal,
      body: Center(
        child: Container(
          height: 600,
          child: Image(image: AssetImage('assets/images/splash_screen_500px.gif')),
        ),
      ),
      
    );
  }
}