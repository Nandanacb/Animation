import 'package:animations/animatedcontainer.dart';
import 'package:animations/fadetransition.dart';
import 'package:animations/rotatetransition.dart';
import 'package:animations/slidertransition.dart';
import 'package:animations/tweentransition.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TweenAnimationBuilderExample(),
    );
  }
}
     