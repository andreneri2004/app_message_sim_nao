import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
  
    final outlineInputBorder = UnderlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: Colors.transparent),
    );


    final  inputDecoration = InputDecoration(
        filled: true,
        fillColor: Theme.of(context).colorScheme.secondaryContainer,
        hintText: 'Digite uma mensagem',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.send_outlined),
        ),
        border: outlineInputBorder,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
      );


    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Mensagem enviada: $value');
      },
      onChanged: (value) {
        print('Usuário digitou: $value');
      },
      
    );
  }
}
