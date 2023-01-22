import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task4/screens/loginpage.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () =>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Loginpage(),)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red,
        child: Center(child: Text('ERE',style: TextStyle(fontSize: 50,color: Colors.white,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}
