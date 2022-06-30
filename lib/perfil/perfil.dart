import 'package:flutter/material.dart';


class TelaPerfil extends StatefulWidget {
  @override
  _TelaPerfilState createState() => _TelaPerfilState();
}

class _TelaPerfilState extends State<TelaPerfil> {

Widget _body(){
      return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            children: [
             Column(
                children: [
                  Container(
                    width: 600,
                    height: 270,
                    decoration: BoxDecoration(
                      boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(58, 0, 0, 0),
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    )
                    ],
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(223, 128, 33, 1),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                            icon: Icon(Icons.arrow_back, color: Color.fromARGB(255, 255, 255, 255), size: 30,),
                            iconSize: 48,
                            onPressed: () {
                            Navigator.of(context).pushReplacementNamed ('/Principal');
                            },
                          ),
                      ],
                  ),
                  Container(
                    width: 200,
                    height: 200,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/imgs/gyo.jpg')),
                        ),
                      ],
                  ),
                ),
                Divider(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(
                    'Meu nome é Gyovana. Eu sou linda, inteligente, chata, mas também adoravel. Amo filmes',
                    style: TextStyle( color: Colors.white, fontSize: 17),
                  )
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
