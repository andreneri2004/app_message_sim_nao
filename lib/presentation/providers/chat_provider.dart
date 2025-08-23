import 'package:flutter/material.dart';
import 'package:yes_no/core/helpers/get_yes_no_answer.dart';
import 'package:yes_no/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: 'Ola, tudo bem doutor?', fromWho: FromWho.otherMessage),
    Message(text: 'Tudo bem, qual a occorência', fromWho: FromWho.myMessage),
  ];

  Future<void> sendMenssage(String text) async {
    if (text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.myMessage);
    messageList.add(newMessage);

    if (text.endsWith('?')) {
      await otherMessage();
    }

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> otherMessage() async {
    final otherMessage = await getYesNoAnswer.getAnswer();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
