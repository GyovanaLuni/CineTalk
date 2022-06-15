import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {

   Widget _body(){
    return Column(
      
      children: [
        Container(
          height: 20,
        ),
           RaisedButton(onPressed: () async {
                  Navigator.of(context).pushReplacementNamed ('/Principal');
                }, 
                child: Text("Filmes"),
                color: Color.fromRGBO(223,128,33,1),),
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

