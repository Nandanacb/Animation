

import 'package:flutter/material.dart';

class RotateTransitionDemo extends StatefulWidget{
  const RotateTransitionDemo({super.key});

  @override
  State<RotateTransitionDemo> createState()=> _RotateTransitionDemoState();

}

class _RotateTransitionDemoState extends State<RotateTransitionDemo>
       with SingleTickerProviderStateMixin
       {
        AnimationController? _controller;
        Animation<double>?_animation;
        @override
        void initState(){
          super.initState();
          _controller= AnimationController(duration: Duration(seconds: 2),vsync:this)..repeat();
          _animation= Tween<double>(
            begin: 1.0,
            end: 0.0,

          ).animate( _controller!);
      

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
              title: Text("Rotate transition Example"),
            ),
            body: Center(
              child: RotationTransition(turns: _animation!,
              child:Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: Center(child: Text("Rotate",style: TextStyle(color: Colors.white),))),
              ),
            ),
             floatingActionButton: FloatingActionButton(
              child:Icon(Icons.play_arrow_outlined),
              onPressed:(){
                if(_controller!.isAnimating){
                  _controller!.stop();
                }
                else{
                  _controller!.repeat();
                }
                }
              
          )
            );
        }
  
  }
  
