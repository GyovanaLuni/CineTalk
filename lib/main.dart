import 'package:flutter/material.dart';

main (){
  // ignore: avoid_unnecessary_containers
  runApp(AppW(title:'CineTalk1'));
}

class AppW extends StatelessWidget{
  final String title;

  const AppW({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {  
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.blue),
        home: HomePage(),
    );    
  }
}

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<HomePage>{
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(child: GestureDetector(child: Text("CineTalk: $counter"), onTap: (){
           setState(() {
            counter++;
           });
        }
      )),
    );
  }

}