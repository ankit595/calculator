import 'dart:async';
import 'package:calculator/mainscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, tryd
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Timer(
      Duration(
        seconds: 3
      ),(){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(image: AssetImage("assets/img.png"),
          colorBlendMode: BlendMode.darken,
            fit: BoxFit.fitWidth,width: MediaQuery.of(context).size.width,
            color: Colors.black54,
          ),
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*.3,
            ),
            Center(
              child: CircleAvatar(
                radius: 50,backgroundColor: Colors.teal[800],
                child: Image(image: AssetImage("assets/img_2.png"),

                ),
              )
            )
          ],
        )
        ],
      ),
    );
  }
}
