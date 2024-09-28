

import 'package:flutter/material.dart';

class ScaleTransitionDemo extends StatefulWidget{
  const ScaleTransitionDemo({super.key});

  @override
  State<ScaleTransitionDemo> createState()=> _ScaleTransitionDemoState();

}

class _ScaleTransitionDemoState extends State<ScaleTransitionDemo>
       with SingleTickerProviderStateMixin
       {
        late AnimationController? _controller;
        late Animation<double>?_animation;
        @override
        void initState(){
          super.initState();
          _controller= AnimationController(duration: Duration(seconds: 1),vsync:this);
          _animation= Tween<double>(
            begin: 1.0,
            end: 0.0,

          ).animate(CurvedAnimation(parent: _controller!, curve: Curves.easeInOut));
          _controller!.forward();

        }
        @override
        void dispose(){
          _controller!.dispose();
          super.dispose();
        }

        @override
        Widget build(BuildContext context){
          return Scaffold(
            appBar: AppBar(
              title: Text("Scale transition Example"),
            ),
            body: Center(
              child: ScaleTransition(scale: _animation!,
              child:Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: Center(child: Text("Slide Me"))),
              ),
            ),
            );
        }
  
  }
  
