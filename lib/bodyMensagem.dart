import 'package:cinetalk/services/ChatMensagem.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'chat_input_fild.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding( 
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ListView.builder(
            itemCount: demoMensagens.length,
            itemBuilder: (context, index) => Message(message: demoMensagens[index],))),
          
        ),
        botaoEnviarMensagem(),
      ],
    );
  }
}

class Message extends StatelessWidget {
  const Message({
    Key? key, required this.message,
  }) : super(key: key);

  final Mensagens message;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        TextMessage(message: message),
      ],
    );
  }
}

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key, required this.message,
  }) : super(key: key);

  final Mensagens message;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(color:Color.fromRGBO(223, 128, 33, 1).withOpacity(message.isSender ? 1 : 0.4), borderRadius:  BorderRadius.circular(30)),
      child: Text(message.text, style: TextStyle(color:Colors.white ),));
  }
}


