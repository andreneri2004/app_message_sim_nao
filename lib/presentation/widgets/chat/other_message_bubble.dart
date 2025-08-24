import 'package:flutter/material.dart';
import 'package:yes_no/domain/entities/message.dart';

class OtherMessageBubble extends StatelessWidget {

  final Message message;

  const OtherMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondaryContainer,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
             message.text,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        const SizedBox(height: 5),

        _ImageBubble(message.imageUrl ?? 'https://yesno.wtf/assets/no/13-755222c98795431aa2e7d453ab1e75a1.gif'),
        
        const SizedBox(height: 5),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {

  final String image;

  const _ImageBubble(this.image);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
      image,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('digitando...'),
          );
        },
      ),
    );
  }
}
