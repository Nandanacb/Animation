

import 'package:flutter/material.dart';

class TweenAnimationBuilderExample extends StatefulWidget{
  const TweenAnimationBuilderExample({super.key});

  @override
  State<TweenAnimationBuilderExample> createState()=> _TweenAnimationBuilderExampleState();

}

class _TweenAnimationBuilderExampleState extends State<TweenAnimationBuilderExample>
      
       {
        bool _isLarge=false;

        @override
        Widget build(BuildContext context){
          return Scaffold(
            appBar: AppBar(
              title: Text("Tween AnimationBuilder Example"),
            ),
            body: Center(
              child:TweenAnimationBuilder (
                tween: Tween<double>(begin: 100,end: _isLarge? 200:100),
              duration:Duration(seconds: 1),
              builder:(context,size,child) {
                return Container(
                width: size,
                height: size,
                color: Colors.blue,
                child: child,
                );
              },
              child:Center(
                child: Text('Animate',style: TextStyle(color: Colors.white,
                ),),
              )
              ),
            ),
             floatingActionButton: FloatingActionButton(
              child:Icon(Icons.play_arrow_outlined),
              onPressed:(){
               setState((){
                _isLarge =!_isLarge;
               });
                },
              
          )
            );
        }
  
  }
  
