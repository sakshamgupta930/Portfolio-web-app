import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_linear_Indicator.dart';
import 'package:portfolio/screens/constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinenarProgressIndicator(
          label: 'Dart',
          percentage: 0.85,
        ),
        AnimatedLinenarProgressIndicator(
          label: 'C',
          percentage: 0.90,
        ),
        AnimatedLinenarProgressIndicator(
          label: 'C++',
          percentage: 0.82,
        ),
        AnimatedLinenarProgressIndicator(
          label: 'Git',
          percentage: 0.75,
        ),
        AnimatedLinenarProgressIndicator(
          label: 'HTML',
          percentage: 0.90,
        ),
        AnimatedLinenarProgressIndicator(
          label: 'CSS',
          percentage: 0.65,
        ),
        AnimatedLinenarProgressIndicator(
          label: 'JavaScript',
          percentage: 0.55,
        ),
      ],
    );
  }
}
