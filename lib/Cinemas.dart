import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Cinemas1 extends StatefulWidget {
  @override
  _Cinemas1State createState() => _Cinemas1State();
}

class _Cinemas1State extends State<Cinemas1> {
  
  Widget _body(){
    return Column(
      
      children: [
        Container(
          height: 20,
        ),
        RaisedButton(onPressed: () async {
        Navigator.of(context).pushReplacementNamed ('/Principal');
        }, 
        color: Color.fromRGBO(223,128,33,1),), 
        Container(
          height: 60,
        ),
        Container(
            width: 340.0,
            child: TextField(     
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 97, 97, 97),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),)
              ),                            
              style: TextStyle(
                height: 1,
                fontSize: 20.0,
                color: Colors.black,
              )
            )
        ),

        Container(
          height: 30,
        ),        
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 30,
              ),
              RaisedButton(onPressed: () async {
              Navigator.of(context).pushReplacementNamed ('/Filmes');
              }, 
              child: Image.asset('assets/imgs/pipoca.png', width: 70, height: 170,),
            ),  
            Container(
              width: 10,
            ),
            Text("Tacaruna",style: TextStyle(color:Color.fromARGB(255, 255, 255, 255), fontSize:  20))
          ],
        ),
        Container(height: 10),
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 30,
              ),
              RaisedButton(onPressed: () async {
              Navigator.of(context).pushReplacementNamed ('/Filmes');
              }, 
              child: Image.asset('assets/imgs/pipoca.png', width: 70, height: 170,),
            ),  
            Container(
              width: 10,
            ),
            Text("RioMar",style: TextStyle(color:Color.fromARGB(255, 255, 255, 255), fontSize:  20))
          ],
        ),
        Container(height: 10),
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 30,
              ),
              RaisedButton(onPressed: () async {
              Navigator.of(context).pushReplacementNamed ('/Filmes');
              }, 
              child: Image.asset('assets/imgs/pipoca.png', width: 70, height: 170,),
            ),  
            Container(
              width: 10,
            ),
            Text("North Way",style: TextStyle(color:Color.fromARGB(255, 255, 255, 255), fontSize:  20))
          ],
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