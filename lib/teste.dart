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
  Widget _body(){
    return Column(
      children: [
        Container(
          height: 20,
        ),
        Container(
          child: Column(children: [
            Row(
              children: [
                Container(
                  width: 10,
                ),
                Container(
                  child:Text('Olá <Pessoa>', style: TextStyle(color:Color.fromARGB(255, 255, 255, 255), fontSize:  20)),
                )
              ],
            )
          ],)  
        ),     
        Container(
          height: 30,
        ),
        Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(onPressed: () async {
                  Navigator.of(context).pushReplacementNamed ('/pagamento');
                }, 
                  child: Text("Compre seu ingresso"),
                  color: Color.fromRGBO(223,128,33,1),),   
                ],
              )
            ],
          ),
        ),
        Container(
          height: 300,
        ),
        Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Padding(
                  padding: const EdgeInsets.all(10.0),   
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
                            fit: BoxFit.cover)
                          ],
                        ),
                      )).toList(),
                    )
                  ),
                )
              ]
            )
          )
        )
        )
      ],
    );

  }



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
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Sair'),
              onTap: (){
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ]),
      ),
       appBar: AppBar(
        toolbarHeight: 75,
        elevation: 0.0,
        bottomOpacity: 0.0,
        backgroundColor: Color.fromARGB(207, 1, 43, 102),
      ),
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

