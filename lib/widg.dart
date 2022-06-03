import 'package:cinetalk/Cinemas.dart';
import 'package:cinetalk/cadeiras.dart';
import 'package:cinetalk/controlador.dart';
import 'package:cinetalk/filmes.dart';
import 'package:cinetalk/login.dart';
import 'package:cinetalk/pagamento.dart';
import 'package:cinetalk/teste.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'home_page.dart';


class AppW extends StatelessWidget{
  @override
  Widget build(BuildContext context) {  
    
    FirebaseFirestore.instance.collection('Crud').get().then((value) {
      value.docs.forEach((element) {
        print(element.data);
      });
    });
    
    return AnimatedBuilder(
      animation: controller.instance,
      builder: (BuildContext context, Widget? child) { 
      return MaterialApp(
        theme: ThemeData(primaryColor: Colors.blue,
        brightness: controller.instance.temaPreto ? Brightness.dark : Brightness.light),
        initialRoute: '/',
        routes: { 
          '/': (context) => login(),
          '/home': (context) => HomePage(),
          '/pagamento':(context) => Pagamento(),
          '/Filmes':(context) => Filmes1(),
          '/Principal':(context) => Principal(),
          '/Cinemas':(context) => Cinemas1(),
          '/Cadeiras':(context) => Cadeiras1(),
          '/Filmesin':(context) => Filmes1(),
        }
      );    
      },
    );
  }
}