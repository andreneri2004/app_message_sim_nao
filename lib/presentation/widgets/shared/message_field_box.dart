import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Theme.of(context).colorScheme.secondaryContainer,
        hintText: 'Digite uma mensagem',
        suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.send_outlined)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      style: TextStyle(color: Theme.of(context).colorScheme.onSecondaryContainer),
      maxLines: null, // Allows for multiple lines
      keyboardType: TextInputType.multiline,
    );
  }
}