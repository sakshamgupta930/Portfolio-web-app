import 'package:flutter/material.dart';
import 'package:portfolio/components/knowledge_text.dart';
import 'package:portfolio/screens/constants.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Knowledge",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        KnowledgeText(
          text: 'Flutter, Dart',
        ),
        KnowledgeText(
          text: 'Git Knowledge',
        ),
        KnowledgeText(
          text: 'Flutter FLow',
        ),
        KnowledgeText(
          text: 'Video / Photoediting',
        ),
      ],
    );
  }
}
