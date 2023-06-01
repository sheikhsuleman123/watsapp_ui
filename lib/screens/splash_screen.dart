import 'dart:async';
import 'package:flutter/material.dart';
import 'package:watsapp_design/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
      Timer(const Duration(seconds: 5),
              () =>  Navigator.push(
                  context, MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              )) );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:  [
         Center(
           child: Padding(
                padding: const EdgeInsets.only(
                    top: 200,
                    left: 100,
                    right: 100,
                    bottom: 50
                ),
        child: Image.asset('assets/images/whatsapp.png', height: 150,width: 150,) ,
            ),
         ),
         const Text("Welcome to Whatsapp" ,
           style: TextStyle( color: Colors.black,fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold ),),

        ],
      ),
    );
  }
}
