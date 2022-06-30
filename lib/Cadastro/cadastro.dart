import 'package:flutter/material.dart';


class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {

Widget _body(){
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Divider(height: 20
        ),
        Row(children: [
          IconButton(
          icon: Icon(Icons.arrow_back, color: Color.fromRGBO(223, 128, 33, 1), size: 30,),
          iconSize: 48,
          onPressed: () {
            Navigator.of(context).pushReplacementNamed ('/');
          },
        ),
        ],),
         Divider(
          height: 20,
        ),
        Text("Cadastro",style: TextStyle(color: Colors.white, fontSize: 30)
        ),
        Container(
          width: 150,
          height: 250,
            child: Image.asset('assets/imgs/pipoca.png')),
        Divider(height: 20),
        Container(
          child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(children: [
                TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    labelText: "Nome",
                    enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(15),
                ),                 
              ),
            ),
            Divider(height: 20),
            TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    labelText: "Email",
                    enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(15),
                ),                 
              ),
            ),
             Divider(height: 20),
            TextField(
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    labelText: "Senha",
                    enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(15),
                ),                 
              ),
            ),
            Divider(height: 20),
            TextField(
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    labelText: "Confirme a Senha",
                    enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(15),
                ),                 
              ),
            ),
            Divider(height: 30),
            RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed ('/');
                },
                child: Text("Cadastro"),  
                color: Color.fromRGBO(223, 128, 33, 1),
              ),

          ]),
        ),
        )
      ],
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



