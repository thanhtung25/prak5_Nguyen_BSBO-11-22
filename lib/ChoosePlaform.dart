import 'dart:io';

import 'package:flutter/material.dart';
import 'package:praktika5/IosApp.dart';
import 'package:praktika5/MacOSScreen.dart';
import 'AndroiApp.dart';

class ChoosePlaform extends StatelessWidget{
  const ChoosePlaform({super.key});
  @override
  Widget build(BuildContext context){
    if(Platform.isAndroid) return const AndroidApp();
    if(Platform.isIOS) return const IosApp();
    if(Platform.isMacOS) return const MacOSScreen();
    return const Text("Underfined");
  }
}

