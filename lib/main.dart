import 'package:flutter/material.dart';
import 'package:yes_no/core/theme/app_theme.dart';
import 'package:yes_no/presentation/pages/chat/chat_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 5).theme(),
      title: 'Yes No App',
      home: const ChatScreen(),
    );
  }
}
