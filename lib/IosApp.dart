import 'package:flutter/material.dart';

class IosApp extends StatefulWidget{
  const IosApp({super.key});

  @override
  State<IosApp> createState() => _IosAppState();
}

class _IosAppState extends State<IosApp> {
  String imageLink = "assets/images/anh.png";
  onButtonPressed() {
       setState(() {imageLink = "assets/images/Iphone.png";});
    }
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title:const Text("Screen for IOS",
        style: TextStyle(
                    color: Colors.white,
                  ),),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding:const  EdgeInsets.all(10.0),
          child:  Column(
            children: [
              const SizedBox(height: 30,),
              const Text("Screen for IOS",
              style: TextStyle(
                      color: Colors.black,
                fontSize: 40,
                    ),),
              const SizedBox(height: 30,),
              TextButton(
                onPressed: onButtonPressed,
                child:const Text('Click me !!',
                style: TextStyle(
                      color: Colors.black,
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