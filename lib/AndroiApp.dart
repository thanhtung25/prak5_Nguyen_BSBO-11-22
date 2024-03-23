import 'package:flutter/material.dart';

class AndroidApp extends StatefulWidget{
  const AndroidApp({super.key});

  @override
  State<AndroidApp> createState() => _AndroidAppState();
}

class _AndroidAppState extends State<AndroidApp> {
  String imageLink = "assets/images/anh.png";
  onButtonPressed() {
       setState(() {imageLink = "assets/images/Android.png";});
    }
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title:const Text("Screen for Android",
        style: TextStyle(
                  color: Colors.white,
                ),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding:const  EdgeInsets.all(10.0),
          child:  Column(
            children: [
              const SizedBox(height: 30,),
              const Text("Screen for Android",
              style: TextStyle(
                    color: Colors.blue,
                fontSize: 40,
                  ),),
              const SizedBox(height: 30,),
              TextButton(
                onPressed: onButtonPressed,
                child:const Text(
                  'Click me !!',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
              Expanded(child: Image.asset(imageLink)),
            ],
          ),
        ),
      )
    );
  }
}