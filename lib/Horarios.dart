import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Horarios extends StatefulWidget {
  @override
  _HorariosState createState() => _HorariosState();
}

class _HorariosState extends State<Horarios> {

  void _showDataPicker(){
     showDatePicker(
       context: context, 
       initialDate: DateTime.now(), 
       firstDate: DateTime(2022),
       lastDate: DateTime(2023),
     );
   }
   Widget _body(){
    return Column(
      
      children: [
        Divider(height: 30),

        RaisedButton.icon(onPressed: () async {
          Navigator.of(context).pushReplacementNamed ('/Filmesin');
          }, 
          icon: Icon(
          Icons.arrow_back
          ),
          label: Text('Voltar'),
          color: Color.fromRGBO(223,128,33,1),),
// calendar_month 
            Container(
              child: MaterialButton(
                onPressed: _showDataPicker,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('data',style: TextStyle( color: Colors.black, ),),
                ),
                color: Color.fromRGBO(223,128,33,1),
              ),
            ),
          ],
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

