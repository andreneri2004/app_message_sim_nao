import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: Colors.transparent),
    );

    final inputDecoration = InputDecoration(
      filled: true,
      fillColor: Theme.of(context).colorScheme.secondaryContainer,
      hintText: 'Finalize a pergunta com ?',
      suffixIcon: IconButton(
        onPressed: () {
          final textValue = textController.value.text;
          print('Mensagem enviada: $textValue');
          textController.clear();
        },
        icon: const Icon(Icons.send_outlined),
      ),
      border: outlineInputBorder,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    );

    return TextFormField(
      onTapUpOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Mensagem enviada: $value');
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
