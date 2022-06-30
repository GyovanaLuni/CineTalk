import 'package:flutter/material.dart';



class TelaMatch extends StatefulWidget {
  @override
  _TelaMatchState createState() => _TelaMatchState();
}

class _TelaMatchState extends State<TelaMatch> {

Widget _body(){
      return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 10,
              ),
              Row(
                children: [
                IconButton(
                icon: Icon(Icons.arrow_back, color: Color.fromRGBO(223, 128, 33, 1), size: 30,),
                iconSize: 48,
                onPressed: () {
                Navigator.of(context).pushReplacementNamed ('/Principal');
                },
               ),
             ],
            ),
             Row(
              children: [
                Container(

                ),
              ],
             ),
      ],
      ),
    )
  )
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

