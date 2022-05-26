import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mercado_pago_mobile_checkout/mercado_pago_mobile_checkout.dart';

class Filmes extends StatefulWidget {
  @override
  _FilmesState createState() => _FilmesState();
}

class _FilmesState extends State<Filmes> {
  final List<String> imageList = [
    'https://pbs.twimg.com/media/E_qHbEYXIAQzRUu.jpg:large',
    'https://uauposters.com.br/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/9/1/911720211216-uau-posters-jujutsu-kaisen-animes-3.jpg',
    'https://sm.ign.com/ign_br/screenshot/default/hasvc-cartazposted-1080x1350px-data_ydrv.jpg',
    'https://pipocanamadrugada.com.br/site/wp-content/uploads/2021/11/Red-Crescer-e-uma-Fera.jpg',
  ];

@override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color.fromARGB(116, 2, 57, 134),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: (){
                print('gyo linda');
              },
            )
          ]),
      ),
      appBar: AppBar(
        toolbarHeight: 75,
        elevation: 0.0,
        bottomOpacity: 0.0,
        backgroundColor: Color.fromARGB(207, 2, 57, 134),
      ),
        body: Container(  
          height: 1000,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 0, 44, 105),
                Color.fromARGB(255, 1, 82, 112),
              ],
            )
          ), 
          child: Padding(
            padding: const EdgeInsets.all(100.0),    
          child: CarouselSlider(
            options: CarouselOptions(
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              autoPlay: true,
            ),
            items: imageList.map((e) => ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.network(e,
                  fit: BoxFit.cover,)
                ],
              ),
            )).toList(),
          )
        ),
      ) 
      
    );
  }
}
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Color.fromRGBO(9,32,66,1)),
        ],
      )
    );
}