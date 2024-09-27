import 'package:flutter/material.dart';

class Animatedcontainer extends StatefulWidget{
  const Animatedcontainer({super.key});
  @override
  State<Animatedcontainer> createState()=> _AnimatedcontainerState();
}

class _AnimatedcontainerState extends State<Animatedcontainer>{
  double _width=100;
  double _height=100;
  Color _color=Colors.blue;

  void _animateContainer(){
    setState((){
      _width = _width ==100?200:100;
      _height =_height ==100?200:100;
      _color =_color == Colors.blue?Colors.red:Colors.blue;
    });
  }
  @override
  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated container Example"),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedContainer(
          
          width:_width,
          height:_height,
          color: _color,
          
          
          duration: Duration(seconds: 2),
          curve: Curves.easeInExpo,
          child: GestureDetector(
            onTap: _animateContainer,
            child: FlutterLogo(
              size: 75,
            ),
          ),),
      ),
    );
  }
}
