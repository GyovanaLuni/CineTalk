import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Cadeiras1 extends StatefulWidget {
  @override
  _Cadeiras1State createState() => _Cadeiras1State();
}

class _Cadeiras1State extends State<Cadeiras1> {

   Widget _body(){
    return Column(
      
      children: [
        Container(
          height: 20,
        ),
        
          ],
        );
  }
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(  
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 0, 33, 79),
                Color.fromARGB(255, 0, 32, 44),
              ],
            )
          ), 
        ),
          _body(),
        ],
      )
    );
  }
}

