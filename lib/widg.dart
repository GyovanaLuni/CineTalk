import 'package:cinetalk/Cinemas.dart';
import 'package:cinetalk/Horarios.dart';
import 'package:cinetalk/cadeiras.dart';
import 'package:cinetalk/Chat/chat.dart';
import 'package:cinetalk/controlador.dart';
import 'package:cinetalk/filmes.dart';
import 'package:cinetalk/filmes.dart';
import 'package:cinetalk/filmesin.dart';
import 'package:cinetalk/login.dart';
import 'package:cinetalk/pagamento.dart';
import 'package:cinetalk/teste.dart';
import 'package:cinetalk/testlogin.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'home_page.dart';


class AppW extends StatelessWidget{
  @override
  Widget build(BuildContext context) {  
    
    
    return AnimatedBuilder(
      animation: controller.instance,
      builder: (BuildContext context, Widget? child) { 
      return MaterialApp(
        theme: ThemeData(primaryColor: Colors.blue,
        brightness: controller.instance.temaPreto ? Brightness.dark : Brightness.light),
        initialRoute: '/',
        routes: { 
          '/': (context) => login(),
          '/testlogin':(context) => TestLogin(),
          '/home': (context) => HomePage(),
          '/Chats': (context) => Chats(),
          '/pagamento':(context) => Pagamento(),
          '/Filmes':(context) => Filmes1(),
          '/Principal':(context) => Principal(),
          '/Cinemas':(context) => Cinemas1(),
          '/Horarios':(context) => Horarios(),
          '/Cadeiras':(context) => Cadeiras1(),
          '/Filmesin':(context) => Filmesin1()
        }
      );    
      },
    );
  }
}