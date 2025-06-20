import 'package:flutter/material.dart';
import 'package:yes_no/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'Ola, tudo bemdd?', fromWho: FromWho.bot),
    Message(text: 'Tudo bem, qual a occorência', fromWho: FromWho.bot),
  ];

  Future<void> sendMenssage(String text) async {
    // final newMessage = Message(text: text, fromWho: FromWho.user);
    // messageList.add(newMessage);
    // notifyListeners();
  }
}
