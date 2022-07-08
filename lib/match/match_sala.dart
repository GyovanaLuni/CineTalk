import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MatchSala extends StatefulWidget {
  @override
  MatchSalaState createState() => MatchSalaState();
}

class MatchSalaState extends State<MatchSala> {

  final imageListMach = [
    'https://s2.glbimg.com/yQF2IgQfqEUwlvyPng6wQ5GzDLw=/696x390/smart/filters:cover():strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2022/T/9/eTHsI7QO6y3fSIBqtYyw/casimiro.jpg',
    'https://i.pinimg.com/564x/f7/f2/a9/f7f2a9726a29b3f2666ef6664bb9e024.jpg',
    'https://criadoresid.com/wp-content/uploads/2016/10/Captura-de-Tela-2020-02-13-a%CC%80s-16.33.42.png',
    'https://quantosanos.com.br/wp-content/uploads/2021/07/bruno-bock-idade-758x448.jpg',
    'https://pbs.twimg.com/profile_images/1250114386540351488/0ep5Y3Mn_400x400.jpg'
  ];

  
CarouselController carouselController = CarouselController();

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
                Navigator.of(context).pushReplacementNamed ('/telamatch');
                },
              ),
            ],
          ),
      ]
    )
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

