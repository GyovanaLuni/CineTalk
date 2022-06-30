import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Filmes1 extends StatefulWidget {
  @override
  _Filmes1State createState() => _Filmes1State();
}

class _Filmes1State extends State<Filmes1> {

  Widget _body(){
    return Column(
      children: <Widget>[
        GestureDetector(
          child: Column(
            children: [
              Container(
          height: 30,
        ),
        Row(
          children: [
          IconButton(
          icon: Icon(Icons.arrow_back, color: Color.fromRGBO(223, 128, 33, 1), size: 30,),
          iconSize: 48,
          onPressed: () {
            Navigator.of(context).pushReplacementNamed ('/Cinemas');
          },
        ),
        ],),
        Container(
          height: 20,
        ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(onPressed: () async {
                  Navigator.of(context).pushReplacementNamed ('/Filmesin');
                }, 
                  child: Image.asset('assets/imgs/aranha.png', width: 100, height: 200,),
                  color: Color.fromARGB(42, 255, 255, 255),
                  ),  
                  RaisedButton(onPressed: () async {
                  Navigator.of(context).pushReplacementNamed ('/home');
                }, 
                  child: Image.asset('assets/imgs/matrix.png', width: 100, height: 200,),
                  color: Color.fromARGB(42, 255, 255, 255),
                  ),
                ],
              ),
              Container(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(onPressed: () async {
                  Navigator.of(context).pushReplacementNamed ('/home');
                }, 
                  child: Image.asset('assets/imgs/eternos.png', width: 100, height: 200,),
                  color: Color.fromARGB(42, 255, 255, 255),
                  ),  
                  RaisedButton(onPressed: () async {
                  Navigator.of(context).pushReplacementNamed ('/home');
                }, 
                  child: Image.asset('assets/imgs/red.png', width: 100, height: 200,),
                  color: Color.fromARGB(42, 255, 255, 255),
                  ),
                ],
              ),
              Container(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(onPressed: () async {
                  Navigator.of(context).pushReplacementNamed ('/home');
                }, 
                  child: Image.asset('assets/imgs/shang.png', width: 100, height: 200,),
                  color: Color.fromARGB(42, 255, 255, 255),
                  ),  
                  RaisedButton(onPressed: () async {
                  Navigator.of(context).pushReplacementNamed ('/home');
                  
                }, 
                  child: Image.asset('assets/imgs/encan.png', width: 100, height: 200,),
                  color: Color.fromARGB(42, 255, 255, 255),),
                
                ],
              ),
            ],
          ),
        )
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
