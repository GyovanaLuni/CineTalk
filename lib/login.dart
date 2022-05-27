import 'package:cinetalk/home_page.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({ Key? key }) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  String email = "";
  String senha= "";

  Widget _body(){
    var row = Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                
                RaisedButton(onPressed: (){

                },
                child: Text('Google'),
                color: Color.fromARGB(255, 255, 255, 255),),

                RaisedButton(onPressed: (){
                }, 
                child: Text("Facebook"),
                color: Color.fromARGB(255, 255, 255, 255),),
                
                ],
                );
    return SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 300,
                  child: Image.asset('assets/imgs/pipoca.png')),
                Container(height: 20),
                TextField(
                  onChanged: (text){email = text;},
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),  
                  labelText: "Email",
                  border: OutlineInputBorder()
                  ),
                ),
                Container(height: 10,),
                TextField(
                  onChanged: (text1){
                    senha = text1;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  labelText: "Senha",
                  border: OutlineInputBorder()
                  ),
                ),
                Container(height: 20,),
                RaisedButton(onPressed: (){
                  if(email == "gyvusvrane@gmail.com" && senha == "123"){
                    Navigator.of(context).pushReplacementNamed ('/home');
                  } else{
                    print('deu errado');
                  }  
                }, 
                child: Text("Entrar"),
                color: Color.fromRGBO(223,128,33,1),),
                Container(
                  height: 20,
                ),
                RaisedButton(onPressed: (){
                }, 
                child: Text("Cadastro"),
                color: Color.fromRGBO(223,128,33,1),),
                Container(
                  height: 30,
                ),
                Container(  
                child: row
                )
              ],
            ),
          ),
        ),
      ); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(  
          height: 1000,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 0, 33, 79),
                Color.fromARGB(255, 1, 53, 72),
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