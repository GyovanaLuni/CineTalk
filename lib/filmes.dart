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
        RaisedButton(onPressed: () async {
        Navigator.of(context).pushReplacementNamed ('/Cinemas');
        }, 
        color: Color.fromRGBO(223,128,33,1),),
        Container(
          height: 20,
        ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(onPressed: () async {
                  Navigator.of(context).pushReplacementNamed ('/home');
                }, 
                  child: Image.asset('assets/imgs/pipoca.png', width: 100, height: 200,),

                  ),  
                  RaisedButton(onPressed: () async {
                  Navigator.of(context).pushReplacementNamed ('/home');
                }, 
                  child: Image.asset('assets/imgs/pipoca.png', width: 100, height: 200,),
                  
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
                  child: Image.asset('assets/imgs/pipoca.png', width: 100, height: 200,),

                  ),  
                  RaisedButton(onPressed: () async {
                  Navigator.of(context).pushReplacementNamed ('/home');
                }, 
                  child: Image.asset('assets/imgs/pipoca.png', width: 100, height: 200,),
                  
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
                  child: Image.asset('assets/imgs/pipoca.png', width: 100, height: 200,),

                  ),  
                  RaisedButton(onPressed: () async {
                  Navigator.of(context).pushReplacementNamed ('/home');
                }, 
                  child: Image.asset('assets/imgs/pipoca.png', width: 100, height: 200,),
                  
                  ),
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
