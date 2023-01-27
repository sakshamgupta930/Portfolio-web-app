import 'package:flutter/material.dart';
import 'package:portfolio/screens/constants.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator(
      {super.key, required this.percentage, required this.label});

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            duration: defaultDuration,
            tween: Tween<double>(begin: 0, end: percentage),
            builder: (BuildContext context, dynamic value, Widget? child) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    value: value,
                    color: primaryColor,
                    backgroundColor: darkColor,
                  ),
                  Center(
                    child: Text(
                      "${(value * 100).toInt()}%",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        SizedBox(height: defaultPadding / 2),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
