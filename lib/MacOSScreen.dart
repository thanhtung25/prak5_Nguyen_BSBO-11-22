

import 'package:flutter/material.dart';

class MacOSScreen extends StatefulWidget{
  const MacOSScreen({super.key});

  @override
  State<MacOSScreen> createState() => _MacOSScreenState();
}

class _MacOSScreenState extends State<MacOSScreen> {
  String imageLink = "assets/images/anh.png";
  onButtonPressed() {
       setState(() {imageLink = "assets/images/MacOs.png";});
    }
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title:const Text("Screen for MacOs"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Padding(
          padding:const  EdgeInsets.all(10.0),
          child:  Column(
            children: [
              const SizedBox(height: 30,),
              const Text("Screen for MacOs",
              style: TextStyle(
                      color: Colors.amber,
                  fontSize: 40,
                    ),),
              const SizedBox(height: 30,),
              TextButton(
                onPressed: onButtonPressed,
                child:const Text('Click me !!',
                style: TextStyle(
                      color: Colors.amber,
                    ),),
              ),
              Expanded(child: Image.asset(imageLink)),
            ],
          ),
        ),
      )
    );
  }
}