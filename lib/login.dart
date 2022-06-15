import 'package:cinetalk/home_page.dart';
import 'package:cinetalk/teste.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  static const _baseUrl =
      'https://console.firebase.google.com/u/3/project/cinetalk1-1a731/database/cinetalk1-1a731-default-rtdb/data/~2F';
  String email = "";
  String senha = "";
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => Principal()));
  }

  Widget _body() {
    var row = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RaisedButton(
          onPressed: () {},
          child: Text('Google'),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text("Facebook"),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
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
                controller: _emailController,
                onChanged: (text) {
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    labelText: "Email",
                    border: OutlineInputBorder()),
              ),
              Container(
                height: 10,
              ),
              TextField(
                controller: _passwordController,
                onChanged: (text1) {
                  senha = text1;
                },
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    labelText: "Senha",
                    border: OutlineInputBorder()),
              ),
              Container(
                height: 20,
              ),
              RaisedButton(
                onPressed: () {
                  signIn();
                },
                child: Text("Entrar"),
                color: Color.fromRGBO(223, 128, 33, 1),
              ),
              Container(
                height: 20,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text("Cadastro"),
                color: Color.fromRGBO(223, 128, 33, 1),
              ),
              Container(
                height: 30,
              ),
              Container(child: row)
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
          )),
        ),
        _body(),
      ],
    ));
  }
}