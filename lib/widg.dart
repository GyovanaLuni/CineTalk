import 'package:cinetalk/Cinemas.dart';
import 'package:cinetalk/controlador.dart';
import 'package:cinetalk/filmes.dart';
import 'package:cinetalk/login.dart';
import 'package:cinetalk/pagamento.dart';
import 'package:cinetalk/teste.dart';
import 'package:flutter/material.dart';

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
          '/home': (context) => HomePage(),
          '/pagamento':(context) => Pagamento(),
          '/Filmes':(context) => Filmes1(),
          '/Principal':(context) => Principal(),
          '/Cinemas':(context) => Cinemas1(),
        }
      );    
      },
    );
  }
}