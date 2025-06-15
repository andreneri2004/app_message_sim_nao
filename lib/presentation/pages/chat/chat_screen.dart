import 'package:flutter/material.dart';
import 'package:yes_no/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no/presentation/widgets/chat/other_message_bubble.dart';
import 'package:yes_no/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const  Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage:  NetworkImage('https://cdn-icons-png.flaticon.com/512/1430/1430402.png'),
          ),
        ),
        title: const Text('Paciente 1'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 2,
              itemBuilder:(context, index) {
              if (index % 2 == 0) {
                return const MyMessageBubble();
              }
              return const OtherMessageBubble();
            },)),
            const  MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
